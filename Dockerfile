FROM python:3.14

# Install python stuff
RUN mkdir -p /opt/devops-docs
COPY "requirements.txt" "/opt/devops-docs/requirements.txt"
RUN pip install --upgrade pip
RUN cd /opt/devops-docs && pip install -r requirements.txt

# Default to running the python app
WORKDIR /opt/devops-docs
CMD ["zensical", "serve", "-a", "0.0.0.0:8000"]
