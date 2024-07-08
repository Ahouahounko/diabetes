FROM python:3.8-slim

WORKDIR app/

COPY . app/

RUN pip install -r requirements.txt

EXPOSE $PORT

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "${PORT}"]