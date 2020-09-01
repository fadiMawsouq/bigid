FROM python:3
WORKDIR /usr/src/app
ADD . /usr/src/app
ADD ./requirements.txt /requirements.txt
ENV PYTHONPATH="$PYTHONPATH:/usr/src/app/bigidvenv"
RUN pip install -r /requirements.txt
CMD [ "python", "./mock_data_generator.py" ]
