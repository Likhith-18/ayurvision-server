FROM python:3.9-slim

WORKDIR /app

RUN pip install --upgrade pip && pip install uv

COPY . /app

RUN chmod -R 777 /app

RUN uv pip install --system -r ./requirements.txt

EXPOSE 8000

CMD ["python","app.py"]
