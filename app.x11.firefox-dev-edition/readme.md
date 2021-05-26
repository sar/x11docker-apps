# Firefox Dev Edition via x11docker

Launch Firefox Developer Edition in a docker container with secure X11 host isolation provided by [x11docker](https://github.com/mviereck/x11docker) project.

### Usage

Refer to [build.sh](./build.sh) and [firefox.devedition.sh](./firefox.devedition.sh) scripts provided. Defaults to `fedora` build target.

Workaround to the known Xcursor bug can be achieved by copying `.Xdefaults` to the shared home folder path of `x11docker` defined in [firefox.devedition.sh](firefox.devedition.sh).

```
# Enable line on first run

# cp -n .Xdefaults /home/$USER/x11docker/firefox-dev/.Xdefaults
```

### Security

Pulseaudio is attached to the container which may expose the host audio input/output interfaces to unwarranted snooping.

Filesystem storage is persistent with `--home` flag which defaults to the path `/home/$USER/.local/share/x11docker/<container_name>`.

### License

This project is made available under the MIT License.
