# Configurando o Cluster Local

## Pre Requisitos

1. Docker
   - Instalação 
     - [Linux](https://docs.docker.com/engine/installation/linux/docker-ce)
     - [Windows] (https://hub.docker.com/editions/community/docker-ce-desktop-windows/)
2. Docker Compose
   - Instalação
     - [Docker Compose Install] (https://docs.docker.com/compose/install/)
3. Criar rede isolada para o cluster:

   `sudo docker network create bigdatacluster`

## Configuração 

`bigdata-cluster.env` contem as de configurações de hostnames/FQND para a comunicação dos serviços dentro do cluster.

## Inicializando o Cluster

`docker-compose up -d`

## Parando os Serviços

`docker-compose down`

## Administração do Cluster via Web UI

- Hadoop Namenode: http://localhost:50070/dfshealth.html#tab-overview
- Hadoop Datanodes:    
      - datanode1: http://localhost:50075/datanode1/


- YARN Resourcemanager: http://myhostmachine:8088/cluster/    
- YARN Historyserver: http://localhost:8188/applicationhistory  
- YARN Nodes:   
      - nodemanager1: http://localhost:8042/nodemanager1/node/


- Spark master : http://localhost:8080/  
- SparkWorkers:
     - sparkworker1: http://localhost:8081/sparkworker1/
    
- Hive server : http://localhost:10002/

## TO DO

- Adicionar um Nginx para centralizar o acesso aos recursos.
- Configurar o limite de memória para cada serviço.