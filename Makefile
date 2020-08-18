DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
current_version = 0.0.1
build:
	docker build -t fapereira1/base:$(current_version) ./images/base
	docker build -t fapereira1/hadoop-base:$(current_version) ./images/hadoop/base
	docker build -t fapereira1/hadoop-datanode:$(current_version) ./images/hadoop/datanode
	docker build -t fapereira1/hadoop-historyserver:$(current_version) ./images/hadoop/historyserver
	docker build -t fapereira1/hadoop-namenode:$(current_version) ./images/hadoop/namenode
	docker build -t fapereira1/hadoop-nodemanager:$(current_version) ./images/hadoop/nodemanager
	docker build -t fapereira1/hadoop-resourcemanager:$(current_version) ./images/hadoop/resourcemanager
	
	docker build -t fapereira1/hive-base:$(current_version) ./images/hive/base
	docker build -t fapereira1/hive-server:$(current_version) ./images/hive/hive-server
	docker build -t fapereira1/hive-metastore:$(current_version) ./images/hive/metastore
	docker build -t fapereira1/hive-postgres:$(current_version) ./images/postgres
	
	docker build -t fapereira1/spark-base:$(current_version)   ./images/spark/base
	docker build -t fapereira1/spark-master:$(current_version) ./images/spark/master
	docker build -t fapereira1/spark-worker:$(current_version) ./images/spark/worker
push:
	docker push fapereira1/base:$(current_version)
	docker push fapereira1/hadoop-base:$(current_version)
	docker push fapereira1/hadoop-datanode:$(current_version)
	docker push fapereira1/hadoop-historyserver:$(current_version)
	docker push fapereira1/hadoop-namenode:$(current_version)
	docker push fapereira1/hadoop-nodemanager:$(current_version)
	docker push fapereira1/hadoop-resourcemanager:$(current_version)
	
	docker push fapereira1/hive-base:$(current_version)
	docker push fapereira1/hive-server:$(current_version)
	docker push fapereira1/hive-metastore:$(current_version)
	docker push fapereira1/hive-postgres:$(current_version)
	
	docker push fapereira1/spark-base:$(current_version)
	docker push fapereira1/spark-master:$(current_version)
	docker push fapereira1/spark-worker:$(current_version)