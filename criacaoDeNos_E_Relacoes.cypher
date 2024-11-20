--Nós departamentos
CREATE (departamento:Departamento {nome_dept: 'Computacao', Orcamento: '50000', Predio: 'Predio K', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Engenharia', Orcamento: '30000', Predio: 'Predio J', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Matematica', Orcamento: '40000', Predio: 'Predio I', chefe_ra: 'NULL'});
CREATE (departamento:Departamento {nome_dept: 'Administracao', Orcamento: '15000', Predio: 'Predio A', chefe_ra: 'NULL'});

--assinalando professores chefes/criando os relacionamentos
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

--Nós Demais Professores
CREATE (professor:Professor {RA: 'RA001', CPF: '862.459.371-91', Nome: 'Nina Barbosa', Email: 'nbarbosa@fei.com', Salario: '9611', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA001', CPF: '862.459.371-91', Nome: 'Nina Barbosa', Email: 'nbarbosa@fei.com', Salario: '9611', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA005', CPF: '945.867.130-20', Nome: 'Catarina Correia', Email: 'ccorreia@fei.com', Salario: '8434', nome_dept: 'Computacao'});
CREATE (professor:Professor {RA: 'RA006', CPF: '285.697.413-91', Nome: 'Raul Abreu', Email: 'rabreu@fei.com', Salario: '8330', nome_dept: 'Matematica'});
CREATE (professor:Professor {RA: 'RA007', CPF: '913.780.256-95', Nome: 'Rafaela Santos', Email: 'rsantos@fei.com', Salario: '11064', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA008', CPF: '713.809.456-66', Nome: 'Isabelly Campos', Email: 'icampos@fei.com', Salario: '13588', nome_dept: 'Engenharia'});
CREATE (professor:Professor {RA: 'RA009', CPF: '075.398.216-12', Nome: 'Joana Moraes', Email: 'jmoraes@fei.com', Salario: '8228', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA010', CPF: '248.301.957-97', Nome: 'Davi Miguel Souza', Email: 'dmiguel@fei.com', Salario: '13579', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA011', CPF: '735.840.192-14', Nome: 'Srta. Gabriela Mendes', Email: 'sgabriela@fei.com', Salario: '11129', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA012', CPF: '870.394.256-29', Nome: 'Sara Vargas', Email: 'svargas@fei.com', Salario: '11044', nome_dept: 'Engenharia'});
CREATE (professor:Professor {RA: 'RA013', CPF: '984.517.230-04', Nome: 'Jade Viana', Email: 'jviana@fei.com', Salario: '9957', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA014', CPF: '756.918.423-82', Nome: 'Lorena Lima', Email: 'llima@fei.com', Salario: '4162', nome_dept: 'Matematica'});
CREATE (professor:Professor {RA: 'RA015', CPF: '648.715.903-48', Nome: 'Bruna Vargas', Email: 'bvargas@fei.com', Salario: '13404', nome_dept: 'Computacao'});
CREATE (professor:Professor {RA: 'RA016', CPF: '280.567.493-65', Nome: 'Gabriela da Rocha', Email: 'gda@fei.com', Salario: '5018', nome_dept: 'Computacao'});
CREATE (professor:Professor {RA: 'RA017', CPF: '326.179.850-59', Nome: 'Breno Borges', Email: 'bborges@fei.com', Salario: '11404', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA018', CPF: '850.172.643-53', Nome: 'Lara Sampaio', Email: 'lsampaio@fei.com', Salario: '11149', nome_dept: 'Computacao'});
CREATE (professor:Professor {RA: 'RA019', CPF: '346.708.219-03', Nome: 'Joao Miguel Monteiro', Email: 'jmiguel@fei.com', Salario: '7540', nome_dept: 'Matematica'});
CREATE (professor:Professor {RA: 'RA020', CPF: '601.528.749-76', Nome: 'Isabela Garcia', Email: 'igarcia@fei.com', Salario: '7751', nome_dept: 'Administracao'});
CREATE (professor:Professor {RA: 'RA021', CPF: '306.941.582-24', Nome: 'Marcos Vinicius Correia', Email: 'mvinicius@fei.com', Salario: '9266', nome_dept: 'Engenharia'});
CREATE (professor:Professor {RA: 'RA022', CPF: '924.708.163-78', Nome: 'Leandro Siqueira', Email: 'lsiqueira@fei.com', Salario: '14836', nome_dept: 'Matematica'});
CREATE (professor:Professor {RA: 'RA023', CPF: '940.126.857-67', Nome: 'Benicio Sousa', Email: 'bsousa@fei.com', Salario: '9027', nome_dept: 'Engenharia'});
CREATE (professor:Professor {RA: 'RA025', CPF: '813.274.905-79', Nome: 'Jade Lima', Email: 'jlima@fei.com', Salario: '10065', nome_dept: 'Engenharia'});

--Relação Professor X Departamento
MATCH (p:Professor), (d:Departamento)
WHERE p.nome_dept = d.nome_dept
CREATE (p)-[:PERTENCE_A]->(d);

--Nós Leciona
CREATE (leciona:Leciona {RA_Prof: 'RA018', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA009', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA010', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA019', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1003', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA021', materia_id: 'M1003', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA013', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA020', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA007', materia_id: 'M1005', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA023', materia_id: 'M1006', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA018', materia_id: 'M1007', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA022', materia_id: 'M1007', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA022', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA004', materia_id: 'M1009', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA016', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA018', materia_id: 'M1011', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA003', materia_id: 'M1011', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA022', materia_id: 'M1012', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA001', materia_id: 'M1012', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA002', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA013', materia_id: 'M1014', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA023', materia_id: 'M1015', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA007', materia_id: 'M1015', Semestre: '2024-1', Ano: '2024', status: 'Ativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA021', materia_id: 'M1006', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA015', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA001', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA004', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA017', materia_id: 'M1001', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA021', materia_id: 'M1015', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA016', materia_id: 'M1005', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1012', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA006', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA017', materia_id: 'M1007', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA001', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA007', materia_id: 'M1012', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA018', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1001', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA006', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA020', materia_id: 'M1009', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA005', materia_id: 'M1007', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA024', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA006', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA002', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA017', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA014', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA023', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA016', materia_id: 'M1009', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA020', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA009', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA009', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA019', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});
CREATE (leciona:Leciona {RA_Prof: 'RA013', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', status: 'Inativo'});

--Criando a relação entre Professores X Leciona
MATCH (p:Professor), (l:Leciona)
WHERE p.RA = l.ra_prof
MERGE (p)-[:LECIONA]->(l);

--Nós Orientador
CREATE (orientador:Orientador {aluno_ra: 'A0026', prof_ra: 'RA013', grupo_id: 'G001'});
CREATE (orientador:Orientador {aluno_ra: 'A0032', prof_ra: 'RA009', grupo_id: 'G002'});
CREATE (orientador:Orientador {aluno_ra: 'A0067', prof_ra: 'RA009', grupo_id: 'G002'});
CREATE (orientador:Orientador {aluno_ra: 'A0013', prof_ra: 'RA003', grupo_id: 'G003'});
CREATE (orientador:Orientador {aluno_ra: 'A0024', prof_ra: 'RA011', grupo_id: 'G004'});
CREATE (orientador:Orientador {aluno_ra: 'A0051', prof_ra: 'RA011', grupo_id: 'G004'});
CREATE (orientador:Orientador {aluno_ra: 'A0019', prof_ra: 'RA005', grupo_id: 'G005'});
CREATE (orientador:Orientador {aluno_ra: 'A0044', prof_ra: 'RA005', grupo_id: 'G005'});
CREATE (orientador:Orientador {aluno_ra: 'A0086', prof_ra: 'RA005', grupo_id: 'G005'});
CREATE (orientador:Orientador {aluno_ra: 'A0080', prof_ra: 'RA025', grupo_id: 'G006'});
CREATE (orientador:Orientador {aluno_ra: 'A0056', prof_ra: 'RA004', grupo_id: 'G007'});
CREATE (orientador:Orientador {aluno_ra: 'A0069', prof_ra: 'RA004', grupo_id: 'G007'});
CREATE (orientador:Orientador {aluno_ra: 'A0099', prof_ra: 'RA004', grupo_id: 'G007'});
CREATE (orientador:Orientador {aluno_ra: 'A0074', prof_ra: 'RA004', grupo_id: 'G007'});
CREATE (orientador:Orientador {aluno_ra: 'A0025', prof_ra: 'RA018', grupo_id: 'G008'});
CREATE (orientador:Orientador {aluno_ra: 'A0088', prof_ra: 'RA019', grupo_id: 'G009'});
CREATE (orientador:Orientador {aluno_ra: 'A0047', prof_ra: 'RA009', grupo_id: 'G010'});
CREATE (orientador:Orientador {aluno_ra: 'A0046', prof_ra: 'RA009', grupo_id: 'G010'});
CREATE (orientador:Orientador {aluno_ra: 'A0079', prof_ra: 'RA005', grupo_id: 'G011'});
CREATE (orientador:Orientador {aluno_ra: 'A0089', prof_ra: 'RA005', grupo_id: 'G011'});
CREATE (orientador:Orientador {aluno_ra: 'A0084', prof_ra: 'RA024', grupo_id: 'G012'});
CREATE (orientador:Orientador {aluno_ra: 'A0075', prof_ra: 'RA024', grupo_id: 'G012'});
CREATE (orientador:Orientador {aluno_ra: 'A0065', prof_ra: 'RA024', grupo_id: 'G012'});
CREATE (orientador:Orientador {aluno_ra: 'A0018', prof_ra: 'RA024', grupo_id: 'G012'});
CREATE (orientador:Orientador {aluno_ra: 'A0017', prof_ra: 'RA020', grupo_id: 'G013'});
CREATE (orientador:Orientador {aluno_ra: 'A0060', prof_ra: 'RA020', grupo_id: 'G013'});
CREATE (orientador:Orientador {aluno_ra: 'A0096', prof_ra: 'RA020', grupo_id: 'G013'});
CREATE (orientador:Orientador {aluno_ra: 'A0027', prof_ra: 'RA020', grupo_id: 'G013'});
CREATE (orientador:Orientador {aluno_ra: 'A0011', prof_ra: 'RA016', grupo_id: 'G014'});
CREATE (orientador:Orientador {aluno_ra: 'A0004', prof_ra: 'RA016', grupo_id: 'G014'});
CREATE (orientador:Orientador {aluno_ra: 'A0034', prof_ra: 'RA016', grupo_id: 'G014'});
CREATE (orientador:Orientador {aluno_ra: 'A0037', prof_ra: 'RA013', grupo_id: 'G015'});
CREATE (orientador:Orientador {aluno_ra: 'A0036', prof_ra: 'RA013', grupo_id: 'G015'});
CREATE (orientador:Orientador {aluno_ra: 'A0048', prof_ra: 'RA013', grupo_id: 'G015'});
CREATE (orientador:Orientador {aluno_ra: 'A0057', prof_ra: 'RA007', grupo_id: 'G016'});
CREATE (orientador:Orientador {aluno_ra: 'A0100', prof_ra: 'RA007', grupo_id: 'G016'});
CREATE (orientador:Orientador {aluno_ra: 'A0054', prof_ra: 'RA025', grupo_id: 'G017'});
CREATE (orientador:Orientador {aluno_ra: 'A0009', prof_ra: 'RA025', grupo_id: 'G017'});
CREATE (orientador:Orientador {aluno_ra: 'A0008', prof_ra: 'RA025', grupo_id: 'G017'});
CREATE (orientador:Orientador {aluno_ra: 'A0043', prof_ra: 'RA002', grupo_id: 'G018'});
CREATE (orientador:Orientador {aluno_ra: 'A0052', prof_ra: 'RA002', grupo_id: 'G018'});
CREATE (orientador:Orientador {aluno_ra: 'A0045', prof_ra: 'RA019', grupo_id: 'G019'});
CREATE (orientador:Orientador {aluno_ra: 'A0095', prof_ra: 'RA019', grupo_id: 'G019'});
CREATE (orientador:Orientador {aluno_ra: 'A0014', prof_ra: 'RA019', grupo_id: 'G019'});
CREATE (orientador:Orientador {aluno_ra: 'A0063', prof_ra: 'RA021', grupo_id: 'G020'});
CREATE (orientador:Orientador {aluno_ra: 'A0091', prof_ra: 'RA013', grupo_id: 'G021'});
CREATE (orientador:Orientador {aluno_ra: 'A0042', prof_ra: 'RA013', grupo_id: 'G021'});
CREATE (orientador:Orientador {aluno_ra: 'A0035', prof_ra: 'RA019', grupo_id: 'G022'});
CREATE (orientador:Orientador {aluno_ra: 'A0039', prof_ra: 'RA019', grupo_id: 'G022'});
CREATE (orientador:Orientador {aluno_ra: 'A0050', prof_ra: 'RA019', grupo_id: 'G022'});
CREATE (orientador:Orientador {aluno_ra: 'A0094', prof_ra: 'RA018', grupo_id: 'G023'});
CREATE (orientador:Orientador {aluno_ra: 'A0071', prof_ra: 'RA018', grupo_id: 'G023'});
CREATE (orientador:Orientador {aluno_ra: 'A0077', prof_ra: 'RA004', grupo_id: 'G024'});
CREATE (orientador:Orientador {aluno_ra: 'A0033', prof_ra: 'RA004', grupo_id: 'G024'});
CREATE (orientador:Orientador {aluno_ra: 'A0058', prof_ra: 'RA004', grupo_id: 'G024'});
CREATE (orientador:Orientador {aluno_ra: 'A0097', prof_ra: 'RA004', grupo_id: 'G024'});
CREATE (orientador:Orientador {aluno_ra: 'A0068', prof_ra: 'RA017', grupo_id: 'G025'});

--Relação Professor X Orientador
MATCH (p:Professor), (o:Orientador)
WHERE p.RA = o.prof_ra
CREATE (p)-[:ORIENTA]->(o);

--Nós Alunos
CREATE (aluno:Aluno {RA: 'A0001', CPF: '694.830.157-66', Nome: 'Barbara Castro', Email: 'bcastro@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0002', CPF: '240.159.783-23', Nome: 'Dra. Luisa Oliveira', Email: 'dluisa@fei.com', curso_id: 'C006'});
CREATE (aluno:Aluno {RA: 'A0003', CPF: '568.970.134-39', Nome: 'Otto Pimenta', Email: 'opimenta@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0004', CPF: '326.809.741-31', Nome: 'Brayan Novaes', Email: 'bnovaes@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0005', CPF: '810.395.724-05', Nome: 'Srta. Ana Cecilia Pimenta', Email: 'sana@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0006', CPF: '398.076.514-84', Nome: 'Valentina Moreira', Email: 'vmoreira@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0007', CPF: '789.364.510-57', Nome: 'Dr. Eduardo Gomes', Email: 'deduardo@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0008', CPF: '709.184.352-50', Nome: 'Isabella Costela', Email: 'icostela@fei.com', curso_id: 'C006'});
CREATE (aluno:Aluno {RA: 'A0009', CPF: '563.209.874-56', Nome: 'Jade Sampaio', Email: 'jsampaio@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0010', CPF: '798.134.025-04', Nome: 'Rafael Silva', Email: 'rsilva@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0011', CPF: '809.657.423-00', Nome: 'Ana Liz Jesus', Email: 'aliz@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0012', CPF: '734.958.216-19', Nome: 'Camila Silveira', Email: 'csilveira@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0013', CPF: '581.796.240-30', Nome: 'Maria Luiza Vargas', Email: 'mluiza@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0014', CPF: '629.058.741-20', Nome: 'Arthur Gabriel Ferreira', Email: 'agabriel@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0015', CPF: '985.062.147-85', Nome: 'Sra. Leticia Santos', Email: 'sleticia@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0016', CPF: '827.056.349-83', Nome: 'Henry Silveira', Email: 'hsilveira@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0017', CPF: '453.781.206-08', Nome: 'Sra. Rafaela Sousa', Email: 'srafaela@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0018', CPF: '235.679.481-64', Nome: 'Dra. Eduarda Pacheco', Email: 'deduarda@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0019', CPF: '978.562.140-58', Nome: 'Ana Clara Porto', Email: 'aclara@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0020', CPF: '546.832.071-17', Nome: 'Luana Montenegro', Email: 'lmontenegro@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0021', CPF: '791.024.853-97', Nome: 'Augusto Rocha', Email: 'arocha@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0022', CPF: '409.872.135-04', Nome: 'Benicio Cavalcante', Email: 'bcavalcante@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0023', CPF: '305.712.689-86', Nome: 'Dr. Levi Cunha', Email: 'dlevi@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0024', CPF: '310.276.945-43', Nome: 'Theo das Neves', Email: 'tdas@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0025', CPF: '802.395.761-95', Nome: 'Maria Laura Pinto', Email: 'mlaura@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0026', CPF: '059.426.713-70', Nome: 'Vinicius Dias', Email: 'vdias@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0027', CPF: '805.423.167-90', Nome: 'Gabriela Vasconcelos', Email: 'gvasconcelos@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0028', CPF: '436.981.057-48', Nome: 'Brenda Duarte', Email: 'bduarte@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0029', CPF: '518.243.690-42', Nome: 'Cecilia Sa', Email: 'csa@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0030', CPF: '192.760.385-40', Nome: 'Ian Novaes', Email: 'inovaes@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0031', CPF: '903.768.254-56', Nome: 'Guilherme da Mata', Email: 'gda@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0032', CPF: '349.156.287-28', Nome: 'Joaquim Abreu', Email: 'jabreu@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0033', CPF: '710.238.694-03', Nome: 'Isaac Azevedo', Email: 'iazevedo@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0034', CPF: '564.873.129-91', Nome: 'Dr. Davi Miguel Leao', Email: 'ddavi@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0035', CPF: '908.234.176-03', Nome: 'Lucas Gabriel Porto', Email: 'lgabriel@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0036', CPF: '409.612.753-16', Nome: 'Isis Novaes', Email: 'inovaes@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0037', CPF: '235.918.407-50', Nome: 'Dra. Sofia da Conceicao', Email: 'dsofia@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0038', CPF: '492.867.150-30', Nome: 'Carlos Eduardo Mendes', Email: 'ceduardo@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0039', CPF: '280.145.637-35', Nome: 'Ana Beatriz Lima', Email: 'abeatriz@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0040', CPF: '815.693.420-24', Nome: 'Emanuel Freitas', Email: 'efreitas@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0041', CPF: '542.367.890-00', Nome: 'Maria Julia Brito', Email: 'mjulia@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0042', CPF: '596.840.327-65', Nome: 'Kevin Souza', Email: 'ksouza@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0043', CPF: '793.185.642-28', Nome: 'Dra. Eloah Leao', Email: 'deloah@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0044', CPF: '340.168.729-87', Nome: 'Danilo Fonseca', Email: 'dfonseca@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0045', CPF: '897.041.325-14', Nome: 'Joao Pedro Nunes', Email: 'jpedro@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0046', CPF: '031.957.846-10', Nome: 'Dra. Isabel Farias', Email: 'disabel@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0047', CPF: '416.975.283-09', Nome: 'Eduardo Caldeira', Email: 'ecaldeira@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0048', CPF: '394.015.768-66', Nome: 'Dr. Josue Cunha', Email: 'djosue@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0049', CPF: '504.129.786-01', Nome: 'Cecilia Carvalho', Email: 'ccarvalho@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0050', CPF: '108.362.957-30', Nome: 'Lara Sousa', Email: 'lsousa@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0051', CPF: '234.197.508-97', Nome: 'Vitor Costela', Email: 'vcostela@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0052', CPF: '923.401.675-07', Nome: 'Luna Nascimento', Email: 'lnascimento@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0053', CPF: '230.148.769-50', Nome: 'Ana Cecilia Jesus', Email: 'acecilia@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0054', CPF: '453.017.289-97', Nome: 'Joana Brito', Email: 'jbrito@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0055', CPF: '589.174.603-48', Nome: 'Manuella da Cunha', Email: 'mda@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0056', CPF: '012.853.497-41', Nome: 'Arthur Miguel Pereira', Email: 'amiguel@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0057', CPF: '490.263.715-43', Nome: 'Allana Gomes', Email: 'agomes@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0058', CPF: '904.628.731-96', Nome: 'Luiz Fernando Sales', Email: 'lfernando@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0059', CPF: '934.082.651-51', Nome: 'Ana Sophia Camara', Email: 'asophia@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0060', CPF: '659.037.812-68', Nome: 'Isabel Aragao', Email: 'iaragao@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0061', CPF: '614.792.503-25', Nome: 'Luiz Gustavo Guerra', Email: 'lgustavo@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0062', CPF: '589.213.607-86', Nome: 'Emanuel Novaes', Email: 'enovaes@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0063', CPF: '158.920.637-12', Nome: 'Dr. Benicio da Costa', Email: 'dbenicio@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0064', CPF: '042.785.196-30', Nome: 'Yasmin Carvalho', Email: 'ycarvalho@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0065', CPF: '368.401.295-51', Nome: 'Ravi Lucca Farias', Email: 'rlucca@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0066', CPF: '754.639.201-25', Nome: 'Daniel Melo', Email: 'dmelo@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0067', CPF: '974.532.801-41', Nome: 'Mariane Lima', Email: 'mlima@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0068', CPF: '159.024.683-70', Nome: 'Eloah Marques', Email: 'emarques@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0069', CPF: '673.219.485-28', Nome: 'Yago Souza', Email: 'ysouza@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0070', CPF: '324.751.089-32', Nome: 'Dr. Theo Novaes', Email: 'dtheo@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0071', CPF: '597.361.204-06', Nome: 'Olivia da Luz', Email: 'oda@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0072', CPF: '708.469.251-76', Nome: 'Pedro Miguel Oliveira', Email: 'pmiguel@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0073', CPF: '268.957.014-94', Nome: 'Marina Fogaca', Email: 'mfogaca@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0074', CPF: '098.213.745-14', Nome: 'Marcela Fonseca', Email: 'mfonseca@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0075', CPF: '860.597.142-85', Nome: 'Maria Clara Camargo', Email: 'mclara@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0076', CPF: '568.192.470-01', Nome: 'Maria Vitoria Pereira', Email: 'mvitoria@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0077', CPF: '156.973.204-34', Nome: 'Nicolas Cardoso', Email: 'ncardoso@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0078', CPF: '820.145.769-20', Nome: 'Srta. Ana Beatriz das Neves', Email: 'sana@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0079', CPF: '819.652.734-91', Nome: 'Thomas Siqueira', Email: 'tsiqueira@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0080', CPF: '301.894.756-84', Nome: 'Lucas Aparecida', Email: 'laparecida@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0081', CPF: '793.825.460-65', Nome: 'Dr. Anthony Nunes', Email: 'danthony@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0082', CPF: '025.619.387-86', Nome: 'Pedro Miguel das Neves', Email: 'pmiguel@fei.com', curso_id: 'C001'});
CREATE (aluno:Aluno {RA: 'A0083', CPF: '689.752.014-49', Nome: 'Sra. Emanuella Dias', Email: 'semanuella@fei.com', curso_id: 'C008'});
CREATE (aluno:Aluno {RA: 'A0084', CPF: '127.364.059-43', Nome: 'Dante Santos', Email: 'dsantos@fei.com', curso_id: 'C003'});
CREATE (aluno:Aluno {RA: 'A0085', CPF: '264.571.830-26', Nome: 'Enzo Gabriel Pinto', Email: 'egabriel@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0086', CPF: '601.792.853-86', Nome: 'Alexandre da Mota', Email: 'ada@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0087', CPF: '371.892.560-59', Nome: 'Benicio Duarte', Email: 'bduarte@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0088', CPF: '670.941.285-76', Nome: 'Joao Felipe Lopes', Email: 'jfelipe@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0089', CPF: '947.103.286-50', Nome: 'Henry Martins', Email: 'hmartins@fei.com', curso_id: 'C002'});
CREATE (aluno:Aluno {RA: 'A0090', CPF: '245.068.139-60', Nome: 'Dr. Leandro Barbosa', Email: 'dleandro@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0091', CPF: '725.963.408-10', Nome: 'Maria Julia Cunha', Email: 'mjulia@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0092', CPF: '271.693.485-19', Nome: 'Dr. Caua Machado', Email: 'dcaua@fei.com', curso_id: 'C006'});
CREATE (aluno:Aluno {RA: 'A0093', CPF: '064.831.592-42', Nome: 'Ravy Duarte', Email: 'rduarte@fei.com', curso_id: 'C004'});
CREATE (aluno:Aluno {RA: 'A0094', CPF: '640.318.592-60', Nome: 'Diogo Oliveira', Email: 'doliveira@fei.com', curso_id: 'C010'});
CREATE (aluno:Aluno {RA: 'A0095', CPF: '610.978.534-20', Nome: 'Kevin Aragao', Email: 'karagao@fei.com', curso_id: 'C007'});
CREATE (aluno:Aluno {RA: 'A0096', CPF: '509.627.138-21', Nome: 'Bernardo Almeida', Email: 'balmeida@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0097', CPF: '528.674.930-56', Nome: 'Bento Machado', Email: 'bmachado@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0098', CPF: '704.952.316-06', Nome: 'Paulo Barbosa', Email: 'pbarbosa@fei.com', curso_id: 'C009'});
CREATE (aluno:Aluno {RA: 'A0099', CPF: '824.597.130-88', Nome: 'Lucas Cassiano', Email: 'lcassiano@fei.com', curso_id: 'C005'});
CREATE (aluno:Aluno {RA: 'A0100', CPF: '805.169.427-94', Nome: 'Sr. Juan Silva', Email: 'sjuan@fei.com', curso_id: 'C002'});

--Relação Aluno X Orientador
MATCH (a:Aluno), (o:Orientador)
WHERE a.RA = o.aluno_ra
CREATE (a)-[:ORIENTADO]->(o);

--Nós Cursando
CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0052', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0048', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0048', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0048', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0039', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0039', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0039', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0029', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0029', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0029', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0068', materia_id: 'M1012', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0068', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0068', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0085', materia_id: 'M1009', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0085', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0085', materia_id: 'M1006', Semestre: '2024-1', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0001', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0001', materia_id: 'M1014', Semestre: '2024-1', Ano: '2024', Nota: '9.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0001', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '3.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0002', materia_id: 'M1009', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0002', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '0.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0002', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0003', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '1.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0003', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0003', materia_id: 'M1001', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0004', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: '5.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0004', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: '4.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0004', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0005', materia_id: 'M1012', Semestre: '2023-2', Ano: '2023', Nota: '6.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0005', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0005', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: '6.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0006', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '3.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0006', materia_id: 'M1014', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0006', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '7.2', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0007', materia_id: 'M1009', Semestre: '2024-2', Ano: '2024', Nota: '8.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0007', materia_id: 'M1010', Semestre: '2024-2', Ano: '2024', Nota: '9.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0007', materia_id: 'M1006', Semestre: '2024-2', Ano: '2024', Nota: '8.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0008', materia_id: 'M1009', Semestre: '2024-2', Ano: '2024', Nota: '5.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0008', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0008', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '4.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0009', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '1.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0009', materia_id: 'M1008', Semestre: '2024-2', Ano: '2024', Nota: '5.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0009', materia_id: 'M1015', Semestre: '2024-1', Ano: '2024', Nota: '5.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0010', materia_id: 'M1003', Semestre: '2024-1', Ano: '2024', Nota: '6.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0010', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0010', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', Nota: '0.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0011', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '8.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0011', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0011', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '8.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0012', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '0.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0012', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0012', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', Nota: '6.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0013', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '9.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0013', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: '5.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0013', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '10.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0014', materia_id: 'M1009', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0014', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '1.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0014', materia_id: 'M1006', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0015', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0015', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: '7.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0015', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0016', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '9.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0016', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0016', materia_id: 'M1005', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0017', materia_id: 'M1012', Semestre: '2024-1', Ano: '2024', Nota: '0.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0017', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '9.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0017', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0018', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '4.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0018', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: '1.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0018', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '5.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0019', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0019', materia_id: 'M1014', Semestre: '2024-1', Ano: '2024', Nota: '8.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0019', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0020', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0020', materia_id: 'M1008', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0020', materia_id: 'M1015', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0021', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0021', materia_id: 'M1010', Semestre: '2023-2', Ano: '2023', Nota: '8.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0021', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0022', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0022', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0022', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0023', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '1.4', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0023', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '6.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0023', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '5.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0024', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: '1.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0024', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0024', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', Nota: '7.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0025', materia_id: 'M1007', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0025', materia_id: 'M1008', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0025', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '2.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0026', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: '5.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0026', materia_id: 'M1010', Semestre: '2023-2', Ano: '2023', Nota: '5.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0026', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: '5.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0027', materia_id: 'M1003', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0027', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0027', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', Nota: '8.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0028', materia_id: 'M1012', Semestre: '2024-1', Ano: '2024', Nota: '5.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0028', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0028', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0030', materia_id: 'M1007', Semestre: '2024-2', Ano: '2024', Nota: '8.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0030', materia_id: 'M1008', Semestre: '2023-1', Ano: '2023', Nota: '7.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0030', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '2.5', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0031', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '2.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0031', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0031', materia_id: 'M1005', Semestre: '2024-2', Ano: '2024', Nota: '2.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0032', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0032', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0032', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0033', materia_id: 'M1009', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0033', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '6.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0033', materia_id: 'M1006', Semestre: '2024-1', Ano: '2024', Nota: '0.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0034', materia_id: 'M1009', Semestre: '2024-1', Ano: '2024', Nota: '0.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0034', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '3.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0034', materia_id: 'M1006', Semestre: '2023-1', Ano: '2023', Nota: '2.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0035', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0035', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: '5.2', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0035', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '7.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0036', materia_id: 'M1009', Semestre: '2024-2', Ano: '2024', Nota: '8.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0036', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '2.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0036', materia_id: 'M1006', Semestre: '2023-2', Ano: '2023', Nota: '9.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0037', materia_id: 'M1007', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0037', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: '4.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0037', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0038', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0038', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '5.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0038', materia_id: 'M1001', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0040', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0040', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: '3.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0040', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '6.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0041', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', Nota: '2.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0041', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '3.5', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0041', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0042', materia_id: 'M1009', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0042', materia_id: 'M1010', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0042', materia_id: 'M1006', Semestre: '2023-2', Ano: '2023', Nota: '9.2', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0043', materia_id: 'M1007', Semestre: '2024-1', Ano: '2024', Nota: '1.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0043', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0043', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '0.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0044', materia_id: 'M1003', Semestre: '2024-2', Ano: '2024', Nota: '9.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0044', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '2.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0044', materia_id: 'M1015', Semestre: '2023-1', Ano: '2023', Nota: '5.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0045', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0045', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '5.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0045', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: '5.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0046', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0046', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: '2.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0046', materia_id: 'M1005', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0047', materia_id: 'M1012', Semestre: '2024-2', Ano: '2024', Nota: '4.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0047', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0047', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: '7.2', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0049', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0049', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '8.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0049', materia_id: 'M1011', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0050', materia_id: 'M1007', Semestre: '2023-1', Ano: '2023', Nota: '8.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0050', materia_id: 'M1008', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0050', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '4.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0051', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: '0.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0051', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '0.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0051', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', Nota: '0.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0053', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0053', materia_id: 'M1014', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0053', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '0.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0054', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0054', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '10.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0054', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: '5.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0055', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0055', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: '4.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0055', materia_id: 'M1005', Semestre: '2023-1', Ano: '2023', Nota: '8.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0056', materia_id: 'M1007', Semestre: '2023-2', Ano: '2023', Nota: '1.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0056', materia_id: 'M1008', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0056', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0057', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0057', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0057', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0058', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '2.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0058', materia_id: 'M1014', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0058', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '7.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0059', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0059', materia_id: 'M1008', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0059', materia_id: 'M1001', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0060', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: '5.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0060', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0060', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0061', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: '1.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0061', materia_id: 'M1010', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0061', materia_id: 'M1011', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0062', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0062', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0062', materia_id: 'M1005', Semestre: '2023-2', Ano: '2023', Nota: '8.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0063', materia_id: 'M1009', Semestre: '2024-2', Ano: '2024', Nota: '8.6', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0063', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0063', materia_id: 'M1006', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0064', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: '0.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0064', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: '3.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0064', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0065', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0065', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0065', materia_id: 'M1015', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0066', materia_id: 'M1009', Semestre: '2023-2', Ano: '2023', Nota: '1.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0066', materia_id: 'M1010', Semestre: '2023-2', Ano: '2023', Nota: '5.1', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0066', materia_id: 'M1006', Semestre: '2024-2', Ano: '2024', Nota: '9.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0067', materia_id: 'M1007', Semestre: '2023-2', Ano: '2023', Nota: '1.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0067', materia_id: 'M1008', Semestre: '2023-1', Ano: '2023', Nota: '1.8', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0067', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0069', materia_id: 'M1012', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0069', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '0.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0069', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: '3.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0070', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: '6.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0070', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0070', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0071', materia_id: 'M1012', Semestre: '2024-2', Ano: '2024', Nota: '8.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0071', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '5.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0071', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: '1.4', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0072', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0072', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0072', materia_id: 'M1011', Semestre: '2023-1', Ano: '2023', Nota: '8.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0073', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0073', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '3.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0073', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0074', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: '0.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0074', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: '3.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0074', materia_id: 'M1005', Semestre: '2024-2', Ano: '2024', Nota: '1.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0075', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0075', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0075', materia_id: 'M1011', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0076', materia_id: 'M1012', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0076', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: '7.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0076', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0077', materia_id: 'M1007', Semestre: '2024-2', Ano: '2024', Nota: '9.8', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0077', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0077', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0078', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', Nota: '7.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0078', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: '3.7', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0078', materia_id: 'M1015', Semestre: '2023-1', Ano: '2023', Nota: '0.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0079', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '5.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0079', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: '8.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0079', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '6.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0080', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0080', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0080', materia_id: 'M1015', Semestre: '2024-2', Ano: '2024', Nota: '8.2', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0081', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '3.1', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0081', materia_id: 'M1004', Semestre: '2023-2', Ano: '2023', Nota: '3.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0081', materia_id: 'M1005', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0082', materia_id: 'M1007', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0082', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: '2.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0082', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0083', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0083', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0083', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0084', materia_id: 'M1004', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0084', materia_id: 'M1014', Semestre: '2023-1', Ano: '2023', Nota: '9.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0084', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: '7.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0086', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0086', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '6.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0086', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0087', materia_id: 'M1012', Semestre: '2024-2', Ano: '2024', Nota: '3.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0087', materia_id: 'M1002', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0087', materia_id: 'M1013', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0088', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0088', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: '6.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0088', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0089', materia_id: 'M1013', Semestre: '2023-2', Ano: '2023', Nota: '8.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0089', materia_id: 'M1010', Semestre: '2024-1', Ano: '2024', Nota: '4.5', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0089', materia_id: 'M1011', Semestre: '2023-2', Ano: '2023', Nota: '8.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0090', materia_id: 'M1002', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0090', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '8.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0090', materia_id: 'M1005', Semestre: '2024-2', Ano: '2024', Nota: '5.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0091', materia_id: 'M1009', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0091', materia_id: 'M1010', Semestre: '2024-2', Ano: '2024', Nota: '5.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0091', materia_id: 'M1006', Semestre: '2024-2', Ano: '2024', Nota: '7.0', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0092', materia_id: 'M1009', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0092', materia_id: 'M1004', Semestre: '2024-2', Ano: '2024', Nota: '7.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0092', materia_id: 'M1014', Semestre: '2024-2', Ano: '2024', Nota: '3.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0093', materia_id: 'M1002', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0093', materia_id: 'M1004', Semestre: '2023-1', Ano: '2023', Nota: '4.0', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0093', materia_id: 'M1005', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0094', materia_id: 'M1003', Semestre: '2024-1', Ano: '2024', Nota: '1.2', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0094', materia_id: 'M1008', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0094', materia_id: 'M1015', Semestre: '2023-2', Ano: '2023', Nota: '4.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0095', materia_id: 'M1009', Semestre: '2023-1', Ano: '2023', Nota: '8.3', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0095', materia_id: 'M1010', Semestre: '2024-2', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0095', materia_id: 'M1006', Semestre: '2023-1', Ano: '2023', Nota: '1.3', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0096', materia_id: 'M1003', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0096', materia_id: 'M1008', Semestre: '2024-2', Ano: '2024', Nota: '7.4', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0096', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', Nota: '4.9', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0097', materia_id: 'M1003', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0097', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0097', materia_id: 'M1001', Semestre: '2023-2', Ano: '2023', Nota: '5.9', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0098', materia_id: 'M1012', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0098', materia_id: 'M1002', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0098', materia_id: 'M1013', Semestre: '2024-2', Ano: '2024', Nota: '9.7', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0099', materia_id: 'M1003', Semestre: '2023-1', Ano: '2023', Nota: '3.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0099', materia_id: 'M1008', Semestre: '2023-2', Ano: '2023', Nota: '9.5', status: 'Aprovado'});
CREATE (cursando:Cursando {RA: 'A0099', materia_id: 'M1001', Semestre: '2024-2', Ano: '2024', Nota: '2.6', status: 'Reprovado'});
CREATE (cursando:Cursando {RA: 'A0100', materia_id: 'M1013', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0100', materia_id: 'M1010', Semestre: '2023-1', Ano: '2023', Nota: 'NULL', status: 'Cursando'});
CREATE (cursando:Cursando {RA: 'A0100', materia_id: 'M1011', Semestre: '2024-1', Ano: '2024', Nota: 'NULL', status: 'Cursando'});

--Correção dos nós cursando, convertendo nota para numero ao inves de string
MATCH (c:Cursando)
SET c.Nota = toFloat(c.Nota);


--Relação Cursando X Aluno
MATCH (a:Aluno), (c:Cursando)
WHERE a.RA = c.RA
CREATE (a)-[:CURSA]->(c);

--Nós Matéria
CREATE (materia:Materia {materia_id: 'M1001', nome_materia: 'Banco de Dados', nome_dept: 'Computacao', curso_id: 'C001'});
CREATE (materia:Materia {materia_id: 'M1002', nome_materia: 'Calculo I', nome_dept: 'Matematica', curso_id: 'C005'});
CREATE (materia:Materia {materia_id: 'M1003', nome_materia: 'Engenharia de Software', nome_dept: 'Computacao', curso_id: 'C001'});
CREATE (materia:Materia {materia_id: 'M1004', nome_materia: 'Algebra Linear', nome_dept: 'Matematica', curso_id: 'C005'});
CREATE (materia:Materia {materia_id: 'M1005', nome_materia: 'Logistica', nome_dept: 'Administracao', curso_id: 'C004'});
CREATE (materia:Materia {materia_id: 'M1006', nome_materia: 'Controle e Automacao', nome_dept: 'Engenharia', curso_id: 'C002'});
CREATE (materia:Materia {materia_id: 'M1007', nome_materia: 'Programacao I', nome_dept: 'Computacao', curso_id: 'C010'});
CREATE (materia:Materia {materia_id: 'M1008', nome_materia: 'Programacao II', nome_dept: 'Computacao', curso_id: 'C001'});
CREATE (materia:Materia {materia_id: 'M1009', nome_materia: 'Fisica I', nome_dept: 'Engenharia', curso_id: 'C002'});
CREATE (materia:Materia {materia_id: 'M1010', nome_materia: 'Fisica II', nome_dept: 'Engenharia', curso_id: 'C002'});
CREATE (materia:Materia {materia_id: 'M1011', nome_materia: 'Quimica Geral', nome_dept: 'Engenharia', curso_id: 'C008'});
CREATE (materia:Materia {materia_id: 'M1012', nome_materia: 'Termodinamica', nome_dept: 'Engenharia', curso_id: 'C006'});
CREATE (materia:Materia {materia_id: 'M1013', nome_materia: 'Resistencia dos Materiais', nome_dept: 'Engenharia', curso_id: 'C007'});
CREATE (materia:Materia {materia_id: 'M1014', nome_materia: 'Mecanica dos Fluidos', nome_dept: 'Engenharia', curso_id: 'C009'});
CREATE (materia:Materia {materia_id: 'M1015', nome_materia: 'Redes de Computadores', nome_dept: 'Computacao', curso_id: 'C010'});

--Relação Matéria X Leciona
MATCH (l:Leciona), (m:Materia)
WHERE l.materia_id = m.materia_id
CREATE (l)-[:LECIONA_MATERIA]->(m);

--Relação Cursando X Matéria
MATCH (c:Cursando), (m:Materia)
WHERE c.materia_id = m.materia_id
CREATE (c)-[:CURSA_MATERIA]->(m);

--Nós CURSO
CREATE (curso:Curso {curso_id: 'C001', nome_curso: 'Ciencia da Computacao', nome_dept: 'Computacao'});
CREATE (curso:Curso {curso_id: 'C002', nome_curso: 'Engenharia Mecanica', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C003', nome_curso: 'Engenharia de Producao', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C004', nome_curso: 'Administracao', nome_dept: 'Administracao'});
CREATE (curso:Curso {curso_id: 'C005', nome_curso: 'Matematica', nome_dept: 'Matematica'});
CREATE (curso:Curso {curso_id: 'C006', nome_curso: 'Engenharia Eletrica', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C007', nome_curso: 'Engenharia Civil', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C008', nome_curso: 'Engenharia Quimica', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C009', nome_curso: 'Engenharia de Controle e Automacao', nome_dept: 'Engenharia'});
CREATE (curso:Curso {curso_id: 'C010', nome_curso: 'Engenharia da Computacao', nome_dept: 'Computacao'});

--Relação Curso X Departamento
MATCH (c:Curso), (d:Departamento)
WHERE c.nome_dept = d.nome_dept
CREATE (c)-[:CURSO_PERTENCE_A]->(d);

--Relação Curso X Aluno
MATCH (a:Aluno), (c:Curso)
WHERE a.curso_id = c.curso_id
CREATE (a)-[:ESTUDA_EM]->(c);

--Relação Curso X Matéria
MATCH (curso:Curso), (materia:Materia)
WHERE curso.curso_id = materia.curso_id
CREATE (curso)-[:INCLUI]->(materia);

--Relação Matéria X Departamento
MATCH (materia:Materia), (departamento:Departamento)
WHERE materia.nome_dept = departamento.nome_dept
CREATE (departamento)-[:GERENCIA]->(materia);

--Nós de Matriz Curricular
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1007'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1008'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C001', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C002', materia_id: 'M1013'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C002', materia_id: 'M1010'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C002', materia_id: 'M1011'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C003', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C003', materia_id: 'M1014'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C003', materia_id: 'M1002'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C004', materia_id: 'M1002'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C004', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C004', materia_id: 'M1005'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C005', materia_id: 'M1003'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C005', materia_id: 'M1008'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C005', materia_id: 'M1001'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C006', materia_id: 'M1009'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C006', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C006', materia_id: 'M1014'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C007', materia_id: 'M1009'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C007', materia_id: 'M1010'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C007', materia_id: 'M1006'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C008', materia_id: 'M1004'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C008', materia_id: 'M1014'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C008', materia_id: 'M1002'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C009', materia_id: 'M1012'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C009', materia_id: 'M1002'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C009', materia_id: 'M1013'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C010', materia_id: 'M1003'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C010', materia_id: 'M1008'});
CREATE (matrizcurricular:MatrizCurricular {curso_id: 'C010', materia_id: 'M1015'});

--relação Matriz X Materia
MATCH (matriz:MatrizCurricular), (materia:Materia)
WHERE matriz.materia_id = materia.materia_id
CREATE (matriz)-[:CONTEM]->(materia);

--relação Matriz X Curso
MATCH (m:MatrizCurricular), (c:Curso)
WHERE m.curso_id = c.curso_id
CREATE (m)-[:MATRIZ_PERTENCE_A]->(c);
