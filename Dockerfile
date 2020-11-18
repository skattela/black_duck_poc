FROM python:slim-buster

COPY src/app.py /app.py
COPY requirements.txt /requirements.txt

RUN pip install --upgrade pip
RUN python setup.py install

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]