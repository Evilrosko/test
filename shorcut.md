# commands to run


```bash
docker build -t evilrosko/test:latest -t evilrosko/test:0.0.2 .
docker push evilrosko/test:0.0.2
docker push evilrosko/test:latest
docker run --mount type=bind,source="$(pwd)"/src/new.txt,target=/new/new.txt evilrosko/test:latest

docker run -p 8000:8000 -v $(pwd):/app evilrosko/test:0.0.10
```



prasitrint senus tagus, pasilikt 0.0.1

Print hostname ir content kas 1s besustojimo