# docker-flyway
flaway docker image

example:
docker run -it --name flyway -v /path/to/your/sql/files:/flyway/sql flyway -X -user=root -password=pass -url=jdbc:mysql://my_sql_host:3306/databasename migrate
docker run -it --name flyway flyway -X -user=root -password=pass -url=jdbc:mysql://my_sql_host:3306/databasename -locations=filesystem:/path/to/sql/dir migrate

