# ELK Stack Lab
Set up an ELK (Elasticsearch, Logstash, Kibana) stack to collect and visualize logs from an Ubuntu server. Include system logs, web server logs, and custom application logs visually through kibana.

## Lab Requirements
- Docker installed
- Docker-Compose installed
- Elastic trial account

## Lab Includes
- .yml file (Docker-Compose) Contains all containers for docker
- .config file (Logstash) Config file that tells logstash where to collect logs
- .dockerfile (Ubuntu) Dockerfile that creates an ubuntu image and is also used by yml file 

## How to setup
1. create a docker network so all containers can communicate
   ```docker network create elk-network```
3. run all lab contianers
  ```docker-compose up -d```
5. read logstash logs to verify connection with elastic search
  ```docker logs -f logstash```
7. test elasticsearch container is running
  ```curl -X GET "http://localhost:9200/_cat/indices?v"```
9. navigate to http://localhost:5601 in any browser
10. setup elastic dashboard
