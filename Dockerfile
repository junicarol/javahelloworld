FROM junicarol/my_ubuntu:1.1
FROM java:7
RUN apt-get -y update && apt-get install -y vim && apt-get install openjdk-7-jdk
RUN apt-get install -y net-tools && apt-get install bridge-utils
RUN apt-get install curl
WORKDIR /home/root/javahelloworld
# ENV FOO bar
RUN mkdir bin && mkdir src
COPY src src 
RUN javac -d bin src/helloworld.java & javac -d bin src/hellocisco.java
CMD ["helloworld"]
ENTRYPOINT ["java","-cp","bin"]
