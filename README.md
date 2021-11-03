# GW-Bootcamp-Project-1
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Diagram](https://github.com/katyml/GW-Bootcamp-Project-1/blob/main/ElkStackDiagram.jpg)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the playbook file may be used to install only certain pieces of it, such as Filebeat.

  - _[Filebeat-Playbook.yml](https://github.com/katyml/GW-Bootcamp-Project-1/blob/main/Ansible%20Playbooks/filebeat-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrics.

The configuration details of each machine may be found below.


| Name               | Function            | IP Address | Operating System |
|--------------------|---------------------|------------|------------------|
| JumpBoxProvisioner | Gateway             | 10.0.0.4   | Linux            |
| Web1               | DVWA Container      | 10.0.0.5   | Linux            |
| Web2               | DVWA Container      | 10.0.0.6   | Linux            |
| ElkServer          | Elk Stack Container | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 73.129.91.240

Machines within the network can only be accessed by the Jump Box with the IP address 20.185.176.217.


A summary of the access policies in place can be found in the table below.

| Name               | Publicly Accessible | Allowed IP Addresses |
|--------------------|---------------------|----------------------|
| JumpBoxProvisioner | Yes                 | 73.129.91.240        |
| Web1               | No                  | 10.0.0.4             |
| Web2               | No                  | 10.0.0.4             |
| ElkServer          | No                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because by automating the process, it ensures accuracy and consistency 

The playbook implements the following tasks:
- Install docker.io
- Download 
- ...

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![sudo docker ps](https://user-images.githubusercontent.com/74930788/139750728-eaf64e2a-ce4c-4d49-aa17-f54fb759e1da.png)
(Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5- Web1
- 10.0.0.6- Web2

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
