This project provides a local lab for ansible practises

The project's compose file located at - github.com/sabirrajabov/ansible-project

If you experience any problems with the lab, please reach out to me on email - **recebov434@gmail.com**




**🚀 New Update** 
* Now you can run your lab on all operating systems.
* Added another ubuntu host including ansible called ubuntu-m to control all these other hosts.
* Added ttyd services which provide terminal in browser
* Added persistence on your main ubuntu host to store all the data you created 







### Installation

The lab environment, makes use of Docker with Docker Compose. If you're on `Windows` or `Mac`, you can install the convenient Docker Desktop to make both Docker and Docker-Compose available.

```Linux```, will require the installation of ```docker``` and ```docker-compose```.

Be aware, when installing docker-compose via ```apt``` or `yum/dnf` . This lab require version >= ***1.29.2***. The binary can be downloaded from the Github (https://github.com/docker/compose/releases) page.

I recommend that the lab environment is downloaded to your respective home directory, i.e. -

* Linux   - `/home/username/ansible-project`
* Windows - `C:\Users\username\ansible-project`
* Mac - `/Users/username/ansible-project`

You should be able to clone the repository accordingly from a terminal.

```git clone https://github.com/sabirrajabov/ansible-project.git```

### Running the lab

Once you've installed the project, you should then be able to run the following in your terminal, directly from the ansible-project directory

```docker-compose up```

If everythig is ok, it should start the environment.  The lab is ready when you see this similar output -

```
Attaching to ubuntu-m, ubuntu1, ubuntu2, centos1, centos2

ubuntu-m    | [2022/03/12 10:29:03:0397] N: ttyd 1.6.3-1d0e344 (libwebsockets 4.2.1-unknown)
ubuntu-m    | [2022/03/12 10:29:03:0420] N: tty configuration:
ubuntu-m    | [2022/03/12 10:29:03:0420] N:   start command: bash
ubuntu-m    | [2022/03/12 10:29:03:0420] N:   close signal: SIGHUP (1)
ubuntu-m    | [2022/03/12 10:29:03:0420] N:   terminal type: xterm-256color
ubuntu-m    | [2022/03/12 10:29:03:0420] N: LWS: 4.2.1-unknown, loglevel 7
ubuntu-m    | [2022/03/12 10:29:03:0420] N: NET SRV H1 WS MbedTLS ConMon IPV6-off
ubuntu-m    | [2022/03/12 10:29:03:0479] N:  Using foreign event loop...
ubuntu-m    | [2022/03/12 10:29:03:0480] N:  ++ [wsi|0|pipe] (1)
ubuntu-m    | [2022/03/12 10:29:03:0480] N:  ++ [vh|0|netlink] (1)
ubuntu-m    | [2022/03/12 10:29:03:0480] N:  ++ [vh|1|default||7681] (2)
ubuntu-m    | [2022/03/12 10:29:03:0481] N: lws_socket_bind: nowsi: source ads 0.0.0.0
ubuntu-m    | [2022/03/12 10:29:03:0481] N:  ++ [wsi|1|listen|default||7681] (2)
ubuntu-m    | [2022/03/12 10:29:03:0481] N:  Listening on port: 7681


```



After that, keep this terminal open and running whilst using the lab.



The IP addresses of these containers are static. In the bottom rows you can see which containers have which IP addresses -

```
172.20.0.6 - ubuntu-m

172.20.0.2 - ubuntu1
172.20.0.3 - ubuntu2

172.20.0.4 - centos1
172.20.0.5 - centos2
```

### ACCESSING MAIN UBUNTU HOST VIA BROWSER

Simply open the browser and enter ip address of the PC which all these containers running on and put the `7681` port after this İP - i.e

`192.168.0.105:7681` or `192.168.1.156:7681`


### COPY SSH PUBLIC KEYS FOR PASSWORDLESS CONNECTION


in the ```ubuntu-m``` host, it have **ssh-copy-id.sh** for automate copy ssh public key to the containers. You have to do this step when you run these containers EVERYTIME.

For run this script, just simply do ```./ssh-copy-id.sh``` on your browser terminal. At the end press ```Ctrl+c``` to finish this script. After that, you will able to ssh these containers whithout entering password.


### CHECKING CONTAINERS WITH ANSIBLE

for checking ansible working on containers, just simply run this command on your browser terminal

```ansible all -m ping```

If everything is okay, ansible will output ping-pong message with green colored text.


### DATA PERSISTeNCE

Under the ```root``` folder there is one folder called ```data```. All folder and files under this folder will be persist. You can use this folder as **storage** folder



After that, you can run simple tasks with ansible for practising your skills.


If you want to close all the containers. You can just simply press the ```Ctrl+c``` on the running terminal.


















