FROM python:3.8

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . ./

RUN pip install --trusted-host --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "app.py"]

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app