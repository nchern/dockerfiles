A dockerization of [veracrypt](https://www.veracrypt.fr/en/) disk encryptor that just works. Naive running veracrypt in the container does not really work. See some explanations below.

## Known issues
1. **Always** unmount all mounted volumes before exiting the running container(see shotcuts). Not doing this leads to the indefinitly hanging container.
2. Had several issues running this in docker on MACOS. 

## Usage

### Build

```bash
make build  # builds an image
```

### Work
```bash
make show-alias  # shows the alias that you can customize and put into your `.bashrc`
```
After running a container you will get a shell where you can operate with veracrypt normally via command line.
The image includes a few of convenient shotcuts to make working with veracrypt easier. See `Dockerfile` under `# Convenient shotcuts`.

## Why, a brief explanation
Veracrypt requires fuse and devicemapper - quite a low level linux features that do not work in docker container just by default. See `veracrypt.sh` how to start container properly, with enabled linux kernel modules.
Here is a list of errors you would see if you try to run a container simply by `docker run -ti veracrypt:latest`:

Error: No such file or directory: /dev/mapper/veracrypt1

Error: device-mapper: create ioctl on veracrypt1 failed: Device or resource busy

error while loading shared libraries: libfuse.so.2
