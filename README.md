# GraphEducation: Sistema Acadêmico com Graph Database

  O GraphEducation é um modelo de banco de dados orientado a grafos baseado no formato Graph Database para gerenciar informações acadêmicas de uma instituição de ensino superior. Este projeto é uma extensão do modelo relacional desenvolvido no semestre anterior, adaptado para o ambiente NoSQL, garantindo flexibilidade e escalabilidade no armazenamento e consulta de dados.

Banco de dados utilizado: Neo4j Community Edition (Open Source)

## Integrantes
<table>
  <tr>
    <th>Nome Aluno</th>
    <th>RA</th>
  </tr>
  <tr>
    <td>Bruna Paz</td>
    <td>22121020-6</td>
  </tr>
    <tr>
    <td>Cayque Cicarelli</td>
    <td>22221005-6</td>
  </tr>
  <tr>
    <td>Kaique Da Silva Fernandes</td>
    <td>22221011-4</td>
  </tr>
  <tr>
    <td>Matheus Miranda Vieira</td>
    <td>22220017-2</td>
  </tr>
</table>

:triangular_flag_on_post: Observação: Devido a inatividade, a instancia do projeto utilizado no semestre anterior foi perdida, então nosso enfoque foi desenvolver um pequeno script em Python capaz de receber comandos de inserção em SQL e convertê-los automaticamente para o formato de inserções compatíveis com o banco Graph Database.


## Como Executar?

1. Para começar, você deve clonar o respositório.
```sh
$ git clone https://github.com/PazBruna/CassandraCampus.git
```

2. Garanta que o python esteja instalado em sua maquina.
```sh
$ python --version
```

3. Instale o Neo4j:
```
Faça o download e instale o Neo4j no site oficial.
```

4. Carregue o banco de dados:
```
Utilize o navegador do Neo4j ou o Cypher Shell para executar o arquivo cypher.
```

5. Agora, execute o arquivo main.py para transformar e migrar os dados do banco relacional para o Neo4j.
```sh
$ python main.py
```

## Arquitetura
O projeto GraphEdu utiliza uma arquitetura baseada em banco de dados de grafos para modelar e gerenciar relacionamentos complexos entre entidades acadêmicas. A escolha do Neo4j foi feita devido à sua eficiência em lidar com consultas baseadas em conexões, que são comuns em cenários acadêmicos.

## Nós
- `Professor:` Representa os professores com atributos como RA, Nome, Email e Salario.
- `Aluno:` Representa os alunos com atributos como RA, Nome, Email e Curso.
- `Departamento:` Representa os departamentos com atributos como nome_dept, Orcamento e Predio.
- `Curso:` Representa os cursos com atributos como curso_id e nome_curso.
- `Materia:` Representa as disciplinas com atributos como materia_id e nome_materia.
- `MatrizCurricular:` Representa as matrizes curriculares com atributos como semestre, ano e codigo.

## Relacionamentos
- `CHEFIA:` Liga um nó Professor a um nó Departamento (relação um-para-um).
- `PERTENCE:` Liga um nó Curso a um nó Departamento (relação muitos-para-um).
- `INCLUI:` Liga um nó MatrizCurricular a um nó Materia (relação muitos-para-muitos).
- `CURSOU:` Liga um nó Aluno a um nó Materia, com atributos como nota, semestre e ano.
- `ORIENTA:` Liga um nó Professor a um nó Aluno como orientador de TCC.

  
## Estrutura do Repositório
`criacaoDeNos_E_relacoes.cypher`: Scripts Cypher para criação de nós, relacionamentos e consultas pré-definidas.

`/scripts/`: Código Python para extração, transformação e carregamento dos dados do banco relacional para o Graph Database .

`README.md`: Documentação do projeto.
 ### Queries: 
 ```cypher
   1.
		MATCH (aluno:Aluno)-[:CURSA]->(cursando:Cursando)-[:CURSA_MATERIA]->(materia:Materia)
		RETURN 
			aluno.Nome AS NomeAluno,
			materia.materia_id AS CodigoDisciplina,
			materia.nome_materia AS NomeDisciplina,
			cursando.Semestre AS Semestre,
			cursando.Ano AS Ano,
			cursando.Nota AS NotaFinal
		ORDER BY NomeAluno, Ano, Semestre;


	2.
		MATCH (professor:Professor)-[:LECIONA]->(leciona:Leciona)-[:LECIONA_MATERIA]->(materia:Materia)
		RETURN 
			professor.Nome AS NomeProfessor,
			materia.materia_id AS CodigoDisciplina,
			materia.nome_materia AS NomeDisciplina,
			leciona.Semestre AS Semestre,
			leciona.Ano AS Ano
		ORDER BY NomeProfessor, Ano, Semestre;


	3.
		MATCH (aluno:Aluno)-[:CURSA]->(cursando:Cursando)-[:CURSA_MATERIA]->(materia:Materia),
		(matriz:MatrizCurricular)-[:CONTEM]->(materia)
		WHERE cursando.Nota >= 5.0 // Apenas disciplinas aprovadas
		WITH aluno, matriz, cursando, 
			 collect(DISTINCT materia.materia_id) AS DisciplinasAprovadas,
			 collect(DISTINCT matriz.materia_id) AS DisciplinasMatriz
		WHERE size(DisciplinasAprovadas) = size(DisciplinasMatriz) // Aluno cursou todas as disciplinas da matriz
		RETURN 
			aluno.Nome AS NomeAluno,
			matriz.matriz_id AS CodigoMatriz,
			max(cursando.Semestre) AS SemestreFormatura,
			max(cursando.Ano) AS AnoFormatura
		ORDER BY NomeAluno, AnoFormatura, SemestreFormatura;
		
	4.
		MATCH (professor:Professor)-[:CHEFIA]->(departamento:Departamento)
		RETURN 
			professor.Nome AS NomeProfessor,
			departamento.nome_dept AS NomeDepartamento
		ORDER BY NomeProfessor;

	5.
		MATCH (aluno:Aluno)-[:ORIENTADO]->(orientador:Orientador)<-[:ORIENTA]-(professor:Professor)
		RETURN 
			orientador.grupo_id AS NomeGrupoTCC,
			collect(aluno.Nome) AS Alunos,
			professor.Nome AS NomeOrientador
		ORDER BY NomeGrupoTCC;
```
### Comandos para criação de tabelas:
```cypher
CREATE (departamento:Departamento {nome_dept: 'Computacao', Orcamento: '50000', Predio: 'Predio K', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Engenharia', Orcamento: '30000', Predio: 'Predio J', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Matematica', Orcamento: '40000', Predio: 'Predio I', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Administracao', Orcamento: '15000', Predio: 'Predio A', chefe_ra: 'NULL'});

CREATE (prof1:Professor {RA: 'RA002', CPF: '903.421.568-70', Nome: 'Sr. Yan Barbosa', Email: 'syan@fei.com', Salario: 5937, nome_dept: 'Administracao'});
CREATE (prof2:Professor {RA: 'RA003', CPF: '196.354.270-34', Nome: 'Caue da Cunha', Email: 'cda@fei.com', Salario: 5433, nome_dept: 'Computacao'});
CREATE (prof3:Professor {RA: 'RA004', CPF: '956.783.201-30', Nome: 'Caroline Sousa', Email: 'csousa@fei.com', Salario: 6124, nome_dept: 'Matematica'});
CREATE (prof4:Professor {RA: 'RA024', CPF: '547.910.863-84', Nome: 'Sr. Thiago Martins', Email: 'sthiago@fei.com', Salario: 7650, nome_dept: 'Engenharia'});
MATCH (d:Departamento {nome_dept: 'Administracao'}), (p:Professor {RA: 'RA002'})
CREATE (p)-[:CHEFIA]->(d);
MATCH (d:Departamento {nome_dept: 'Computacao'}), (p:Professor {RA: 'RA003'})
CREATE (p)-[:CHEFIA]->(d);
MATCH (d:Departamento {nome_dept: 'Matematica'}), (p:Professor {RA: 'RA004'})
CREATE (p)-[:CHEFIA]->(d);
MATCH (d:Departamento {nome_dept: 'Engenharia'}), (p:Professor {RA: 'RA024'})
CREATE (p)-[:CHEFIA]->(d);

CREATE (professor:Professor {RA: 'RA001', CPF: '862.459.371-91', Nome: 'Nina Barbosa', Email: 'nbarbosa@fei.com', Salario: '9611', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA001', CPF: '862.459.371-91', Nome: 'Nina Barbosa', Email: 'nbarbosa@fei.com', Salario: '9611', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA005', CPF: '945.867.130-20', Nome: 'Catarina Correia', Email: 'ccorreia@fei.com', Salario: '8434', nome_dept: 'Computacao'});
CREATE (professor:Professor {RA: 'RA006', CPF: '285.697.413-91', Nome: 'Raul Abreu', Email: 'rabreu@fei.com', Salario: '8330', nome_dept: 'Matematica'});
CREATE (professor:Professor {RA: 'RA007', CPF: '913.780.256-95', Nome: 'Rafaela Santos', Email: 'rsantos@fei.com', Salario: '11064', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA008', CPF: '713.809.456-66', Nome: 'Isabelly Campos', Email: 'icampos@fei.com', Salario: '13588', nome_dept: 'Engenharia'});

MATCH (p:Professor), (d:Departamento)
WHERE p.nome_dept = d.nome_dept
CREATE (p)-[:PERTENCE_A]->(d);

CREATE (leciona:Leciona {RA_Prof: 'RA018', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA009', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA010', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA019', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});

MATCH (p:Professor), (l:Leciona)
WHERE p.RA = l.ra_prof
MERGE (p)-[:LECIONA]->(l);

CREATE (orientador:Orientador {aluno_ra: 'A0026', prof_ra: 'RA013', grupo_id: 'G001'});
CREATE (orientador:Orientador {aluno_ra: 'A0032', prof_ra: 'RA009', grupo_id: 'G002'});
CREATE (orientador:Orientador {aluno_ra: 'A0067', prof_ra: 'RA009', grupo_id: 'G002'});
CREATE (orientador:Orientador {aluno_ra: 'A0013', prof_ra: 'RA003', grupo_id: 'G003'});

MATCH (p:Professor), (o:Orientador)
WHERE p.RA = o.prof_ra
CREATE (p)-[:ORIENTA]->(o);

CREATE (aluno:Aluno {RA: 'A0001', CPF: '694.830.157-66', Nome: 'Barbara Castro', Email: 'bcastro@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0002', CPF: '240.159.783-23', Nome: 'Dra. Luisa Oliveira', Email: 'dluisa@fei.com', curso_id: 'C006'});
CREATE (aluno:Aluno {RA: 'A0003', CPF: '568.970.134-39', Nome: 'Otto Pimenta', Email: 'opimenta@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0004', CPF: '326.809.741-31', Nome: 'Brayan Novaes', Email: 'bnovaes@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0005', CPF: '810.395.724-05', Nome: 'Srta. Ana Cecilia Pimenta', Email: 'sana@fei.com', curso_id: 'C009'});

MATCH (a:Aluno), (o:Orientador)
WHERE a.RA = o.aluno_ra
CREATE (a)-[:ORIENTADO]->(o);

CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0048', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});

MATCH (c:Cursando)
SET c.Nota = toFloat(c.Nota);

MATCH (a:Aluno), (c:Cursando)
WHERE a.RA = c.RA
CREATE (a)-[:CURSA]->(c);

CREATE (materia:Materia {materia_id: 'M1001', nome_materia: 'Banco de Dados', nome_dept: 'Computacao', curso_id: 'C001'});
CREATE (materia:Materia {materia_id: 'M1002', nome_materia: 'Calculo I', nome_dept: 'Matematica', curso_id: 'C005'});
CREATE (materia:Materia {materia_id: 'M1003', nome_materia: 'Engenharia de Software', nome_dept: 'Computacao', curso_id: 'C001'});
CREATE (materia:Materia {materia_id: 'M1004', nome_materia: 'Algebra Linear', nome_dept: 'Matematica', curso_id: 'C005'});

MATCH (l:Leciona), (m:Materia)
WHERE l.materia_id = m.materia_id
CREATE (l)-[:LECIONA_MATERIA]->(m);

MATCH (c:Cursando), (m:Materia)
WHERE c.materia_id = m.materia_id
CREATE (c)-[:CURSA_MATERIA]->(m);

CREATE (curso:Curso {curso_id: 'C001', nome_curso: 'Ciencia da Computacao', nome_dept: 'Computacao'});
CREATE (curso:Curso {curso_id: 'C002', nome_curso: 'Engenharia Mecanica', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C003', nome_curso: 'Engenharia de Producao', nome_dept: 'Engenharia'});

MATCH (c:Curso), (d:Departamento)
WHERE c.nome_dept = d.nome_dept
CREATE (c)-[:CURSO_PERTENCE_A]->(d);

MATCH (a:Aluno), (c:Curso)
WHERE a.curso_id = c.curso_id
CREATE (a)-[:ESTUDA_EM]->(c);

MATCH (curso:Curso), (materia:Materia)
WHERE curso.curso_id = materia.curso_id
CREATE (curso)-[:INCLUI]->(materia);

MATCH (materia:Materia), (departamento:Departamento)
WHERE materia.nome_dept = departamento.nome_dept
CREATE (departamento)-[:GERENCIA]->(materia);

CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1007'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1008'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C002', materia_id: 'M1013'});

MATCH (matriz:MatrizCurricular), (materia:Materia)
WHERE matriz.materia_id = materia.materia_id
CREATE (matriz)-[:CONTEM]->(materia);

MATCH (m:MatrizCurricular), (c:Curso)
WHERE m.curso_id = c.curso_id
CREATE (m)-[:MATRIZ_PERTENCE_A]->(c);
```
