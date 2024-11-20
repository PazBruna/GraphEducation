import re


def sql_to_neo4j(input_file, output_file):
    """
    Converte SQL INSERT e UPDATE statements para Neo4j CREATE e SET statements.
    """
    try:
        with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
            for line in infile:
                # Remove espaços extras e ignora linhas vazias ou comentários
                line = line.strip()
                if not line or line.startswith("--"):
                    continue

                # Conversão de INSERT INTO para CREATE
                insert_match = re.match(r"INSERT INTO (\w+)\s*\((.*?)\)\s*VALUES\s*\((.*?)\);", line, re.IGNORECASE)
                if insert_match:
                    table, columns, values = insert_match.groups()
                    
                    # Processa colunas e valores
                    columns = [col.strip() for col in columns.split(",")]
                    values = [val.strip().strip("'") for val in values.split(",")]

                    # Cria um dicionário para as propriedades do nó
                    properties = ", ".join(f"{col}: '{val}'" for col, val in zip(columns, values))

                    # Escreve a sintaxe do Neo4j CREATE no arquivo de saída
                    outfile.write(f"CREATE ({table.lower()}:{table} {{{properties}}});\n")

                # Conversão de UPDATE para SET
                update_match = re.match(
                    r"UPDATE (\w+)\s+SET\s+(\w+)\s*=\s*'([^']+)'\s+WHERE\s+(\w+)\s*=\s*'([^']+)';", line, re.IGNORECASE
                )
                if update_match:
                    table, set_column, set_value, where_column, where_value = update_match.groups()

                    # Gera o comando Neo4j equivalente
                    neo4j_update = (
                        f"MATCH (n:{table} {{{where_column}: '{where_value}'}})\n"
                        f"SET n.{set_column} = '{set_value}'\n"
                        f"RETURN n;\n"
                    )
                    outfile.write(neo4j_update)

        print(f"Conversão concluída! O resultado foi salvo em '{output_file}'.")
    except FileNotFoundError:
        print(f"Erro: O arquivo '{input_file}' não foi encontrado.")
    except Exception as e:
        print(f"Ocorreu um erro: {e}")


def main():
    """
    Função principal que chama a conversão.
    """
    input_file = "insertsSql.sql"
    output_file = "createsAndUpdatesNeo4j.txt"
    
    print("Iniciando a conversão de SQL INSERTs e UPDATEs para Neo4j CREATEs e SETs...")
    sql_to_neo4j(input_file, output_file)


if __name__ == "__main__":
    main()
