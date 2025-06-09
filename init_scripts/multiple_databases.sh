#!/bin/bash
set -e

echo "Starting multiple database creation script..."
echo "POSTGRES_MULTIPLE_DATABASES: $POSTGRES_MULTIPLE_DATABASES"

if [ -n "$POSTGRES_MULTIPLE_DATABASES" ]; then
    echo "Creating multiple databases: $POSTGRES_MULTIPLE_DATABASES"

    IFS=',' read -ra DBS <<< "$POSTGRES_MULTIPLE_DATABASES"

    for db in "${DBS[@]}"; do
        db=$(echo "$db" | xargs)
        echo "Processing database: '$db'"

        # メインデータベースは既に作成されているのでスキップ
        if [ "$db" = "$POSTGRES_DB" ]; then
            echo "Skipping $db (already exists as main database)"
            continue
        fi

        echo "Creating database: $db"
        psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
            CREATE DATABASE "$db";
            GRANT ALL PRIVILEGES ON DATABASE "$db" TO "$POSTGRES_USER";
EOSQL
        echo "Database $db created successfully"
    done

    echo "Multiple databases creation completed!"
else
    echo "POSTGRES_MULTIPLE_DATABASES is not set"
fi