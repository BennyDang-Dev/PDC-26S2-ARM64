# PDC-26S2-ARM64
A container image test based on Ubuntu 22.04 ARM64/AARCH64
The image has both `mpicc` & `mpirun` installed.s

This does not automatically create a host_file to distribute the process
Though this can be automated at creation within the `devcontainer.json` (including setting a specific hostname)

### Notes
- Before pushing, need to create a access token (classic) with write privileges
- Login into **ghcr.io** using docker: `docker login ghcr.io`
    - Enter GitHub Username
    - Password is the newly generated access token
- Building the image with proper tags
```
docker build \
--tag ghcr.io/bennydang-dev/pdc-26s2-arm64:latest \
--tag ghcr.io/bennydang-dev/pdc-26s2-arm64:0.1 \
```
> Note: repository name must be in lowercase!
- Then just push it to `ghcr.io`
```
docker push ghcr.io/bennydang-dev/pdc-26s2-arm64:latest 
docker push ghcr.io/bennydang-dev/pdc-26s2-arm64:0.1
```
