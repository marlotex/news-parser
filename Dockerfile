# FROM mcr.microsoft.com/playwright/python:v1.42.0-jammy
FROM mcr.microsoft.com/playwright/python:jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD ["python", "main.py"]