FROM ubuntu:16.04
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    python \
    python-pip    
RUN python -m pip install --upgrade pip
RUN pip install flask
COPY . /opt/app
WORKDIR /opt/app
ENTRYPOINT FLASK_APP=/opt/app/app.py flask run --host=0.0.0.0 --port=8080
