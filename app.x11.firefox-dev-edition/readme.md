# Firefox Dev Edition via x11docker

Launch Firefox Developer Edition in a docker container with secure X11 host isolation provided by [x11docker](https://github.com/mviereck/x11docker) project.

### Usage

Refer to [build.sh](./build.sh) and [firefox.devedition.sh](./firefox.devedition.sh) scripts provided. Defaults to `fedora` build target.

#### Optimization

**Xcursor**

There is a known Xcursor bug can be achieved by copying `.Xdefaults` to the shared home folder path of `x11docker` defined in [firefox.devedition.sh](firefox.devedition.sh).

```
# Enable line on first run

# cp -n .Xdefaults /home/$USER/x11docker/x11-firefox-dev/.Xdefaults
```

**Disable WebGL**

Older versions of `firefox < 85` may crash if WebGL library fails to load in the DOM. This can be disabled using the properties:

```
webgl.disabled = true;
webgl.disable-wgl = true;
```

**Disable Proton**

Restore the classic firefox theme by disabling extra Proton features.

```
browser.proton.enabled = false;
```

**Performance Tweaks**

Enable the following settings from `about:config` to optimize firefox for remote X11 rendering. Note that enabling currently breaks `firefox >= 89`.

```
gfx.xrender.enabled = true;
```

### Security

Pulseaudio is attached to the container which may expose the host audio input/output interfaces to unwarranted snooping.

Filesystem storage is persistent with `--home` flag which defaults to the path `/home/$USER/.local/share/x11docker/<container_name>`.

**Networking**

By default `--hostnet` flag is passed on this build script. Use with caution as any website can run `nmap` scans on your network.

### License

This project is made available under the MIT License.
