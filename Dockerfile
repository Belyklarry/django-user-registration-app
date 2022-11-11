FROM python:3.8.10

ENV DockerHOME=/home/app/webapp

RUN mkdir -p ${DockerHOME}

WORKDIR ${DockerHOME}

RUN pip3 install --upgrade pip

COPY . ${DockerHOME}

RUN pip3 install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]