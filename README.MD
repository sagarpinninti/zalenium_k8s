Descriptionp:  
=============  

When we run work.yml playbook it performs below tasks:  
Install kubernetes multinode cluster on ubuntu managed nodes  
Setup weavenetwork   
Deploy kubernetes dashboard  
Deploy Zalenium   
Install helm   
Deploy Grafana and Promethus Dashboards for monitoring  


Prerequisite:  
=============  
Clone the git repo and remove join.sh   
Modify the user settings in ansible.cfg as per your requirement.  
Install python,vim using apt-get to run ansibleplaybook sucessfully on all managed hosts.  

Post Installation:  
==================   
Use kubectl edit svc and modify the k8s dashboard and Grafana dashboard from ClusterIP to Nodeport to expose the ports.  

Files & Description:  
===================    
hosts file - To specify the managed hosts   
ansible.cfg - Ansible config file  
config - K8s admin.confg for managing k8s from kubectl generated @run time 
join.sh - For adding minions to k8s ( delete after git clone it will get generate @runtime)  
work.yml - Main Playbook to run entire flow.  
group_vars - has list of packages need to install   
deployments -  has depolyment scripts of k8s dashboard, helmcharts, zalenium, Grafana  

Note: This is valid for baremetal/vm's on ubuntu hosts(Managed hosts).  
