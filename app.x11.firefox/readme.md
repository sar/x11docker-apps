# Firefox X11 Docker Container

Launch Firefox in a docker container with secure X11 host isolation provided by [x11docker](https://github.com/mviereck/x11docker) project.

### Usage

Refer to [build.sh](./build.sh) and [firefox.sh](./firefox.sh) scripts provided.

### Security

Pulseaudio is attached to the container which may expose the host audio input/output interfaces to unwarranted snooping.

Filesystem storage is persistent with `--home` flag which defaults to the path `/home/$USER/.local/share/x11docker/<container_name>`.

### License

This project is made available under the MIT License.
