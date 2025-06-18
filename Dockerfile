# syntax=docker/dockerfile:1
FROM python:3.13-alpine
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8000
COPY . .
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
