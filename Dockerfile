FROM python:3.11-alpine
WORKDIR /new
COPY src/hello.py .
CMD [ "python", "./hello.py" ]