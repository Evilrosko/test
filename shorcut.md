# commands to run


```bash
docker build -t evilrosko/test:latest -t evilrosko/test:0.0.2 .
docker push evilrosko/test:0.0.2
docker push evilrosko/test:latest
docker run --mount type=bind,source="$(pwd)"/new.txt,target=/new/new.txt evilrosko/test:latest
```

Print hostname ir content kas 1s besustojimo