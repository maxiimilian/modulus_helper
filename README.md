This repository contains helper scripts to easily run [NVIDIA Modulus](https://docs.nvidia.com/deeplearning/modulus/index.html) on a remote machine.

## Preliminary
We assume the following setup:
- You have a **deskop** on which you carry out your work.
- You have a **workstation** on which Modulus is setup using Docker (see [install guide](https://docs.nvidia.com/deeplearning/modulus/user_guide/getting_started/installation.html))
- You want to program on your desktop but let the code run on the workstation.

For this to work, we will open an SSH tunnel from your **desktop** to the **workstation** 
which enables communication between your local machine and the Modulus Docker container.
Tunnels connect a port on your desktop (local machine) XXXX with a remote port YYYY on
your workstation:
```shell
ssh -p XXXX:localhost:YYYY workstation
```
Replace XXXX and YYYY with the ports given in the guides below.

## Access through Jupyter Lab

## Access through VSCode
Coming soon...
