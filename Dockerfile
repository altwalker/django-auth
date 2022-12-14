FROM python:3.8-buster

RUN pip install pipenv

RUN mkdir /code
WORKDIR /code

COPY . /code/
RUN pipenv lock --requirements > requirements.txt && \
  pip install -r requirements.txt && \
  python manage.py migrate

EXPOSE 8000/tcp

CMD python manage.py runserver 0.0.0.0:8000