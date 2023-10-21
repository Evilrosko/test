FROM python:3.9-slim
WORKDIR /app
COPY src/ /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r /app/requirements.txt
RUN pip install uvicorn
EXPOSE 8000
CMD ["uvicorn", "src.hello:app", "--host", "127.0.0.1", "--port", "8000"]