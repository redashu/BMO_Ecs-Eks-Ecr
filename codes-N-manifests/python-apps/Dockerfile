FROM python
# we are trying to target python image from docker hub 
# Dockerfile keywords are case insensitve
LABEL name=ashutoshh
LABEL email=ashutoshh@linux.com 
# optional field but people can use as contact point 
RUN mkdir /ashucode 
# is to run the instructiion during build time
COPY ashu.py /ashucode/ 
ADD hello.py  /ashucode/
# to copy data from docker client to build process
CMD ["python","/ashucode/ashu.py"]
# CMD is to set Default process for container
# is to run only when you are creating container from this image
