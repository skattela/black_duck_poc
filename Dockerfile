FROM python:slim-buster

COPY src/app.py /app.py

RUN pip install --upgrade pip
RUN python setup.py install

ENTRYPOINT [ "python" ]
CMD [ "app.py" ]