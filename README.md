This project provides a local lab for ansible practises

The project's compose file located at - github.com/sabirrajabov/ansible-project

If you experience any problems with the lab, please reach out to me on email - **recebov434@gmail.com**


NOTE: THIS IS THE FIRST VERSION OF THIS PROJECT. LAB PROVIDES SIMPLE ANSIBLE TASKS ONLY AND IT SUPPORTED ON **LINUX**. IN FUTURE PROJECT WILL BE DEVELOPED FOR ADVANCE TASKS AND FOR DIFFERENT OPERATING SYSTEMS.


### Installation 

**Linux**, will require the installation of docker and docker-compose.

Be aware, when installing docker-compose via **apt** or **yum/dnf** . This lab require version >= 1.29.2. The binary can be downloaded from the Github (https://github.com/docker/compose/releases) page.

I recommend that the lab environment is downloaded to your respective home directory, i.e. -

* Linux   - /home/username/ansible-project

You should be able to clone the repository accordingly from a terminal.

```git clone https://github.com/sabirrajabov/ansible-project.git```

### Running the lab

Once you've installed the project, you should then be able to run the following in your terminal, directly from the ansible-project directory

```docker-compose up```

If everythig is ok, it should start the environment.  The lab is ready when you see this similar output -

Attaching to ubuntu1, ubuntu2, centos1, centos2



After that, keep this terminal open and running whilst using the lab.



The IP addresses of these containers are static. In the bottom rows you can see which containers have which IP addresses -

172.20.0.2 - ubuntu1
172.20.0.3 - ubuntu2

172.20.0.4 - centos1
172.20.0.5 - centos2



### COPY SSH PUBLIC KEYS FOR PASSWORDLESS CONNECTION

NOTE: PLEASE BE AWARE, YOU SHOULD HAVE ROOT ACCESS FOR THIS LAB. JUST SWITCH TO ROOT USER WITH SUDO OR WITH ROOT PASSWORD.


in the lab folder, it have **ssh-copy-id.sh** for automate copy ssh public key to the containers. You have to do this step when you run these containers EVERYTIME.

For run this script, just simply do ```./ssh-copy-id.sh``` on your terminal. At the end press ```Ctrl+c``` to finish this script. After that, you will able to ssh these containers whithout entering password.


### CHECKING CONTAINERS WITH ANSIBLE

for checking ansible working on containers, just simply run this command

```ansible all -m ping```

If everything is okay, ansible will output ping-pong message with green colored text.

After that, you can run simple tasks with ansible for practising your skills.


If you want to close all the containers. You can just simply press the ```Ctrl+c`` on the running terminal.


















