FROM fapereira1/hadoop-base:0.0.1

LABEL Description="This is the NodeManager for Hadoop Cluster" \
      Author="Fabio Pereira <fapereira1@gmail.com>"

HEALTHCHECK CMD curl -f http://localhost:8042/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

EXPOSE 8042

CMD ["/run.sh"]