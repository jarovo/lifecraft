FROM ubuntu

RUN mkdir /app
WORKDIR /app

RUN apt-get update && apt-get install -y python3-pip

RUN apt-get install -y libgl1-mesa-glx libegl1

COPY . /app

RUN python3 -m pip install --editable .

CMD lifecraft