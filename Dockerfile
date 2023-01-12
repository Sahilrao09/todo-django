FROM python:3
RUN apt-get install pip3
RUN pip3 install django

COPY . .

RUN python manage.py migrate
EXPOSE 8000
CMD ["python","manage.py","runserver","0.0.0.0:8000"]
