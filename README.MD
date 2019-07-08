# Run on local shell
### Enable Virtual Environment
```
virtualenv .venv
source .venv/bin/activate
```

### Install python dependencies
```
pip install -r requirements.txt
```

### Launch application
```
gunicorn --reload app.main
```

### Disable Virtual Environment
```
deactivate
```

# Run on Docker
### Build and Run container
```
docker build -t myapp .
docker run -e PORT=8000 -it -p 8000:8000 myapp
```

### To clean up old images
```
docker system prune
```

# Load Test with `wrk`
```
wrk --duration 20s --threads 100 --connections 100 http://0.0.0.0:8000
```
*where number of connections must be >= threads*
