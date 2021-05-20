# Containerized Linux Apps using X11docker ![x11docker](https://raw.githubusercontent.com/mviereck/x11docker/master/x11docker.png)

Monorepo for running Linux Apps in a Container via x11docker to prevent X.Org server security leaks. Learn more about the [x11docker](https://github.com/mviereck/x11docker) project on github.

## Usage

For most apps, container build and deploy can be done using provided scripts (example):

```bash
$ echo firefox.sh
> x11docker -p --home -- --tmpfs /dev/shm -- firefox:alpine
```

## License

This project is made available under the MIT License.

