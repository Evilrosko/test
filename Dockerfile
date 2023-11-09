#stage 1
FROM python:3.12-alpine as builder
WORKDIR /app
COPY ./src .
COPY requirements.txt /app
RUN pip install --no-cache-dir -r /app/requirements.txt

#stage2
FROM python:3.12-alpine
WORKDIR /app
COPY --from=builder /app /app
RUN pip install fastapi uvicorn
EXPOSE 8000
CMD ["uvicorn", "hello:app", "--host", "0.0.0.0", "--port", "8000"]
