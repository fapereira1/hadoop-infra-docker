DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
current_version = 1.0.0
build:
	docker build -t fapereira1/hadoop-base:$(current_version) ./images/base
	docker build -t fapereira1/hadoop-namenode:$(current_version) ./images/namenode
	docker build -t fapereira1/hadoop-datanode:$(current_version) ./images/datanode
	docker build -t fapereira1/hive:$(current_version) ./images/hive
	docker build -t fapereira1/hive-metastore-postgresql:$(current_version) ./images/hive-metastore-postgresql
	docker build -t fapereira1/spark-base:$(current_version)   ./images/spark/base
	docker build -t fapereira1/spark-master:$(current_version) ./images/spark/master
	docker build -t fapereira1/spark-worker:$(current_version) ./images/spark/worker