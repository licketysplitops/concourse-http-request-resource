FROM python:3.11-alpine

COPY assets/* /opt/resource/
run chmod +x /opt/resource/check /opt/resource/in /opt/resource/out
WORKDIR /opt/resource
RUN pip install --no-cache-dir -r requirements.txt && rm requirements.txt
