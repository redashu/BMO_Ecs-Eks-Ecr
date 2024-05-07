FROM oraclelinux:8.4 
LABEL name=ashutoshh 
RUN yum install python3 -y \
&& mkdir /mycode 
COPY  *.py  /mycode/
#CMD ["python3","/mycode/hello.py"]