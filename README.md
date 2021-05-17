# NiFi Demo
A demo using Apache NiFi for authoring data pipelines connected
to multiple data sources running over multiple docker containers.

## NiFi Templates
* [CSV to JSON](./nifi/templates/convert-csv-to-json.xml): a simple template for
a data pipeline which pulls a CSV file from a folder, transform the CSV records to
a JSON format, then save it to a file 
* [import data from postgres to mongodb](./nifi/templates/database-to-mongo.xml): read
records from a database table  according to criteria, convert it into a JSON record,
then store it in a mongodb collection

## Requirements
To run this project, you need docker, docker-compose, and a web browser to run
jupyter notebooks and browse database contents

## How to run
Use docker-compose to run [docker-compose.yml](docker-compose.yml) file 
containing all required containers setup 

```shell script
docker-compose up
```
you can pass -d to run the containers in the background
```shell script
docker-compose up -d
```

## Docker containers and base images
Below table shows the docker containers that should run after executing
the docker-compose successfully

| container name  | base image                | Dockerfile | Description                                                                                                                                             |
|-----------------|---------------------------|------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|
| demo_jupyter    | jupyter /minimal-notebook | [Dockerfile](./jupyter/Dockerfile)           | A notebook to execute python scripts to generate sample CSV file and insert random records to database.  This is the entry point for the demo execution |
| mongodb         | mongo                     | [Dockerfile](./mongo/Dockerfile)           | A MongoDB server                                                                                                                                        |
| mongodb_express | mongo-express             | [Dockerfile](./mongo-express/Dockerfile)           | A MongoDB express to browse MongoDB databases and collections                                                                                           |
| demo_nifi       | apache /nifi:latest       | [Dockerfile](./nifi/Dockerfile)           | An Apache NiFi container to run data pipelines                                                                                                          |
| demo_pgadmin    | dpage /pgadmin4           | [Dockerfile](./pgadmin/Dockerfile)           | A web browser for postgres database content                                                                                                             |
| demo_postgres   | postgres                  | [Dockerfile](./postgres/Dockerfile)           | Postgres Database engine, running with username and password "pg" and a database with name demoDB                                                       |



