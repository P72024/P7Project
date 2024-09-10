FROM python:3.12

WORKDIR /

# Install dependencies
COPY requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt

# Copy the entire app into /app/ in the container
COPY . /app/
EXPOSE 5000/tcp

# This command will run the "__main__.py"
ENTRYPOINT [ "python3", "/app/" ]