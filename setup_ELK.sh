docker network create elk-network
docker run -dit --name ubuntu_server --network elk-network ubuntu /bin/bash
docker inpsect elasticsearch | grep "IPAddress"
docker stop ubuntu_server
docker rm ubuntu_server
docker run -dit --name ubuntu_server --network elk-network -v /var/log:/var/log ubuntu /bin/bash
docker logs logstash -f
curl -X GET "http://localhost:9200/_cat/indices?v"
