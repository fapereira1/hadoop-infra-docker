FROM fapereira1/hive-base:0.0.1

LABEL Description="This is the Hive Datawarehouse image" \
      Author="Fabio Pereira <fapereira1@gmail.com>"

COPY startup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/startup.sh

EXPOSE 9083

HEALTHCHECK CMD netstat -tuplen | grep 9083 || exit 1

CMD startup.sh