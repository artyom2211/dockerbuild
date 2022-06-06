FROM python:3.7-alpine
MAINTAINER Vlasov Artem


ENV PTHONUNBUFFERED 1


COPY ./requirements.txt /requirements.txt


RUN pip install -r /requirements.txt


RUN mkdir /myapp
WORKDIR /myapp
COPY ./myapp /myapp


RUN adduser -D user


USER user