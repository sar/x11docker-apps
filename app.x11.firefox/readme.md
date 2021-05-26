# Firefox X11 Docker Container

Launch Firefox in a docker container with secure X11 host isolation provided by [x11docker](https://github.com/mviereck/x11docker) project.

### Usage

Refer to [build.sh](./build.sh) and [firefox.sh](./firefox.sh) scripts provided.

#### Optimization

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

Enable the following settings from `about:config` to optimize firefox for remote X11 rendering.

```
gfx.xrender.enabled = true;
```

### Security

Pulseaudio is attached to the container which may expose the host audio input/output interfaces to unwarranted snooping.

Filesystem storage is persistent with `--home` flag which defaults to the path `/home/$USER/.local/share/x11docker/<container_name>`.

### License

This project is made available under the MIT License.
