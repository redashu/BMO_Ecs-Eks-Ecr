FROM oraclelinux:8.4 
LABEL email="ashutoshh@linux.com"
ENV myapp=ashu 

# is to define env variables with default values
RUN yum install httpd -y \ 
&& mkdir -p  /common/{dev_app,prod_app}
COPY dev-env-app  /common/dev_app/
ADD  prod-env-app /common/prod_app/
COPY deploy.sh /common/
WORKDIR /common
RUN chmod +x deploy.sh 
ENTRYPOINT [ "./deploy.sh" ]
# CMD replacement is Entrypoint to run default process of container
