FROM python:3.11
workdir /app
copy . /app
run pip install -r requirements.txt
expose 80
cmd ["python", "app.py"]