FROM ghcr.io/googlecloudplatform/spark-operator:v1beta2-1.3.3-3.1.1
ARG spark_uid=185
RUN sudo apt install curl
USER 0 
RUN chown ${spark_uid} -R /opt/spark
RUN curl https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.7.6/aws-java-sdk-1.7.6.jar --output /opt/spark/jars/aws-java-sdk-1.7.6.jar
RUN curl https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/2.7.6/hadoop-aws-2.7.6.jar --output /opt/spark/jars/hadoop-aws-2.7.6.jar
RUN sudo apt remove curl
USER ${spark_uid}
