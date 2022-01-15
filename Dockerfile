# Dockerfile, Image, Container
# FROM python:3.9.0

# ADD main.py .

# # Install dependencies
# RUN pip install requests beautifulsoup4

# CMD ["python", "./main.py"]

# Dockerfile, Image, Container
FROM python:3.9.0

# ENV VIRTUAL_ENV=env
# RUN python -m venv $VIRTUAL_ENV
# ENV PATH="$VIRTUAL_ENV\Scripts\activate "

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# Run the application:
COPY main.py .
CMD ["python", "./main.py"]
