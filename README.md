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

3. Agora, execute o arquivo main.py
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
`/queries/`: Scripts para criação de tabelas e consultas.

`/scripts/`: Código Python para extração, transformação e carregamento dos dados do banco relacional para o Graph Database .

`README.md`: Documentação do projeto.

### Queries:
```sql

```
 ### Comandos para criação de tabelas:
 ```cql
   
```
### Comandos para Inserts:
```cql
    
```
