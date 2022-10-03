This repository contains helper scripts to easily run [NVIDIA Modulus](https://docs.nvidia.com/deeplearning/modulus/index.html) on a remote machine.

## Preliminary
We assume the following setup:
- You have a **deskop** on which you carry out your work.
- You have a **workstation** on which Modulus is setup using Docker (see [install guide](https://docs.nvidia.com/deeplearning/modulus/user_guide/getting_started/installation.html))
- You want to program on your desktop but let the code run on the workstation.

Clone this repository **on the workstation** into your home directory:
```shell
git clone git@github.com:maxiimilian/modulus_helper.git
```

For this to work, we will open an SSH tunnel from your **desktop** to the **workstation** 
which enables communication between your local machine and the Modulus Docker container.
SSH tunnels connect a port on your desktop (local machine), e.g. XXXX, with a remote port 
on your workstation, e.g. YYYY:
```shell
ssh -L XXXX:localhost:YYYY workstation
```

## Access through Jupyter Lab
- Open a terminal **on your desktop** and ssh into the workstation: `ssh -L 1234:localhost:1234 workstation`
- Navigate to cloned repo `modulus_helper` and enter the `modulus_jupyter` directory
- Running `start_modulus.sh` with root rights (i.e. `sudo start_modulus.sh`) will do two things:
  - Start Jupyter Lab on the workstation with Modulus enabled
  - Create a new directory `data` inside `modulus_jupyter` (default) as working directory of Jupyter.
    If you want to exchange data, put it into the `data` directory so that it will show up in Jupyter.
- To connect to the Modulus Jupyter instance on your **deskop**, open a Browser, and navigate to
  `http://localhost:1234`.
- You will be asked for a token which is found on the terminal of the **workstation**, e.g., 
  `http://hostname:8888/?token=ed6957b670921d611a1853d40514f11452ba6fd41651222b`. Only copy the string
  after `token=`.

## Access through VSCode
Coming soon...
