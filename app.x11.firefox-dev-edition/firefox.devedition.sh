# ------------
# x11docker:firefox.dev
# ------------

# cp -n .Xdefaults /home/$USER/x11docker/firefox-dev/.Xdefaults

x11docker -p --home --hostnet firefox.dev:latest

set +x;
