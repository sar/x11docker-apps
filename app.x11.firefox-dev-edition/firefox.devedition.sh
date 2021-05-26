# ------------
# x11docker:firefox.dev
# ------------

# cp -n .Xdefaults /home/$USER/x11docker/x11-firefox-dev/.Xdefaults

x11docker -p --home --hostnet x11.firefox.dev:latest

set +x;
