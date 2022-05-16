# Using Python's virtualenv for local docs development

1.  Ensure Python dependencies are installed.

    ```
    brew install python3 pip3
    ```

1.  Setup python virtualenv and fetch python dependencies:

    ```bash
    python3 -m venv ~/.cache/venv/devops-docs
    source ~/.cache/venv/devops-docs/bin/activate
    pip install --upgrade pip
    pip install -r requirements.txt
    ```

1.  Simply run `mkdocs serve` and browse to
    [http://127.0.0.1:8000/](http://127.0.0.1:8000/) .
