# commands to run


```bash
docker build -t evilrosko/test:latest -t evilrosko/test:0.0.2 .
docker push evilrosko/test:0.0.2
docker push evilrosko/test:latest
docker run --mount type=bind,source="$(pwd)"/src/new.txt,target=/new/new.txt evilrosko/test:latest
```



prasitrint senus tagus, pasilikt 0.0.1

Print hostname ir content kas 1s besustojimo