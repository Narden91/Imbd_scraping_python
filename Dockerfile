# Dockerfile, Image, Container
FROM python:3.9.0

ADD main.py .

# Install dependencies
RUN pip install requests beautifulsoup4

CMD ["python", "./main.py"]