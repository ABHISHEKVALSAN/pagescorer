FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
ADD pagescorer /code/pagescorer
RUN pip install -r requirements.txt
COPY . /code/
