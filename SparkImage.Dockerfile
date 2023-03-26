FROM apache/spark:v3.1.3
ARG spark_uid=185
USER 0 
RUN chown ${spark_uid} -R /opt/spark
RUN apt install curl -y
RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar --output /opt/spark/jars/hadoop-aws-3.2.0.jar
RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.375/aws-java-sdk-bundle-1.11.375.jar --output /opt/spark/jars/aws-java-sdk-bundle-1.11.375.jar
RUN apt remove curl -y
USER ${spark_uid}
