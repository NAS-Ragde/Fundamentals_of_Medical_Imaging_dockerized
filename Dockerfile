FROM tomcat:8.5.57

# Copy additional libraries into /usr/local/tomcat/lib/
COPY ./Oviyam/lib/* /usr/local/tomcat/lib/