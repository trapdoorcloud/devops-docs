FROM python:3.8
# Install dependencies and clean-up apt sources
# RUN apt-get update && apt-get install -y \
#     build-essential \
#     cmake \
#     libopenblas-dev \
#     libatlas-base-dev \
#     liblapack-dev \
#     libx11-dev \
#     libgtk-3-dev \
#   && apt-get -y clean all \
#   && rm -rf /var/lib/apt/lists/*

# Install python stuff
WORKDIR /opt
RUN mkdir devops-docs
COPY "requirements.txt" "/opt/devops-docs/requirements.txt"
RUN pip install --upgrade pip
RUN cd devops-docs && pip install -r requirements.txt

# Default to running the python app
WORKDIR /opt/devops-docs
# TODO: SECURITY: We shouldn't have to bind to 0.0.0.0. Though I
# needed this to get it to work.
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
