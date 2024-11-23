from python:3.9 as builder
workdir /app
copy . /app
run  python -m venv /app/venv && /app/venv/bin/pip install --no-cache-dir -r requirements.txt
from python:3.9-slim
workdir /app
copy --from=builder /app /app
expose 80
cmd ["/app/venv/bin/python", "launch.py"]
~
