FROM tomcat
RUN apt-get update && apt-get install -y git maven \
    && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello 
RUN mvn package && cp target/*.war ../webapps/
