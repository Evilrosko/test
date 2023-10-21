FROM python:uvicorn
WORKDIR /new
COPY src/hello.py .
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install uvicorn
EXPOSE 8000
CMD ["uvicorn", "hello:app", "--host", "0.0.0.0", "--port", "8000"]
