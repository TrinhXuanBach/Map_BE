FROM python:3
# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /code/
COPY . /code/
EXPOSE 8000
RUN pip install --default-timeout=100 future
RUN pip install cryptography
RUN pip install -r requirements.txt
CMD ["python", "main.py"]