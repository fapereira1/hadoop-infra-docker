FROM fapereira1/base:0.0.1

LABEL Description="This is a base image for Spark Nodes" \
      Author="Fabio Pereira <fapereira1@gmail.com>"

ENV SPARK_VERSION spark-2.4.6-bin-hadoop2.7
ENV SPARK_URL https://downloads.apache.org/spark/spark-2.4.6/spark-2.4.6-bin-hadoop2.7.tgz

RUN set -x \
    && curl -fSL "$SPARK_URL" -o /tmp/spark.tar.gz \
    && tar -xvzf /tmp/spark.tar.gz -C /opt/ \
    && rm /tmp/spark.tar.gz*

ENV SPARK_HOME=/opt/$SPARK_VERSION
ENV PATH $SPARK_HOME/bin:$PATH

COPY hive-site.xml $SPARK_HOME/conf/
COPY core-site.xml $SPARK_HOME/conf/
COPY yarn-site.xml $SPARK_HOME/conf/

ENV HADOOP_CONF_DIR=$SPARK_HOME/conf

COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENV PYSPARK_PYTHON=python3.6
ENV PYTHONHASHSEED 1

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
