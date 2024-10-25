FROM ubuntu

RUN apt-get update 
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-flask

COPY application.py /opt/app

ENTRYPOINT FLASK_APP=/opt/app/application.py flask run 
EXPOSE 8080
CMD ["flask", "run", "--host", "0.0.0.0", "--port", "8080"]
