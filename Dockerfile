FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install django-bootstrap-form
RUN pip install gunicorn==19.9.0
RUN git clone https://github.com/akkun09/tutorial.git
