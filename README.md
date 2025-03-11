# README.md

If you don't want/can't install VMWare Player & just want to GCC with Docker.

## Install Docker
- Install Docker by grabbing it from the official site. Pick your OS:
  - For Linux, follow [this guide](https://docs.docker.com/install/linux/)
  - For macOS, see [this guide](https://docs.docker.com/desktop/mac/install/)
  - For Windows (g-d forbid), see [this guide](https://docs.docker.com/desktop/windows/install/)
- Make sure `docker compose` is installed too. It comes with Docker Desktop on Windows/macOS. On Linux, if it’s missing, get it from [here](https://docs.docker.com/compose/install/).

## Start the Container
- Clone this repo
- Put your `C` files in the `internal` folder in the repo.
- Open a terminal in the repo directory and run:

```bash
docker compose up -d
```

This starts the container in the background.

## Get Inside
- To work in the container, run:

```bash
docker exec -it openu bash
```
- Now you’re in! Use the terminal like normal—your files from `internal` are at `/root`.

Uni wants us to compile using `-ansi -pedantic -Wall` flags, e.g:
```bash
gcc -g -ansi -pedantic -Wall test.c -o test
```

## Notes
- The container’s named `openu` and uses GCC 14.2.0 by default. _The uni uses 5.4_, you can change that in the Dockerfile. If you do decide to use the older version though - Note that installing packages through `apk` might not work (old repo URLs), so comment that command (again - see the Dockerfile).
- Your `internal` folder maps to `/root` inside the container.
- Timezone’s set to Jerusalem.
- Check `gcc --version` inside to confirm it’s the version you want.
- If you mess up, check the Docker docs/just rebuild the container with
```bash
docker compose up --build --force-recreate -d
```
- To stop & remove the container, use
```bash
docker compose down
```
(I'd recommend you check out Docker/Podman if you're unfamiliar with it)