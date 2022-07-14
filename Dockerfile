FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=microblog.py

CMD [ "python", "./microblog.py" ]

# CMD [ "flask run" ]

EXPOSE 5000