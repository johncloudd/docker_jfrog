# FROM python:3.9.1-alpine3.12

# RUN pip install flask

# WORKDIR /app
# COPY rest-api.py .
# RUN chmod u+x rest-api.py
# RUN chown xfs rest-api.py

# USER xfs 
# CMD [ "python", "./rest-api.py"]

#Deriving the latest base image
FROM python:latest

#Labels as key value pair
LABEL Maintainer="Sam"

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /usr/app/src

#to COPY the remote file at working directory in container
COPY * ./
# Now the structure looks like this '/usr/app/src/test.py'

#CMD instruction should be used to run the software
#contained by your image, along with any arguments.

CMD [ "python", "./main.py"]