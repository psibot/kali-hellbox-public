# HellBox - Public
Kali Setup for a BOX from HELL

![Example](https://imgur.com/FIvxk7U.png)

Please use only for testing !!! ...yeah right.

Thanks for ALL the guys that made this install possible Redteam and the Guys AT Hak5 ... your vids keeps me going.

Please support >>> 

https://redteam.guide/

https://shop.hak5.org/

# Prereqs:


The following REPOS to install 

* **kali**: ```# sudo vi /etc/apt/sources.list  ```

* **sources.list**: ```deb http://http.kali.org/kali kali-rolling main non-free contrib ```
* **sources.list**: ```deb-src http://http.kali.org/kali kali-rolling main non-free contrib ```


 1.Nessus on Kali 
https://www.tenable.com/blog/getting-started-with-nessus-on-kali-linux

 2.Shodan - shodan cli 
https://www.shodan.io/

 3.Ansible
https://github.com/ansible/ansible.git

 4.Git



Tested on Kali.

* **kali**: ```# git clone https://github.com/psibot/r3dT3am-kali.git  ```
* **kali**: ```# cd r3dT3am-kali  ```

In folder installers run 
* **kali**: ```# chmod 770 *.sh   ```
* **kali**: ```# sudo ./init-install.sh   ```

For The last steps you will need ton install redteam threadbox

## ThreadBox Quickstart

### Provision

Provision one or more targets.


### Configuration

1) Copy `hosts.sample` to `hosts`
2) Edit `hosts` with the IP(s) of your target systems
3) Copy `group_vars\threatbox.yml.sample` to `group_vars\threatbox.yml`
4) Edit `group_vars\threatbox.yml` with the updated variables you would like to use
   - Don't forget to update SSH key with a key that has access to the remote target

### Ansible commands

```
# OSX issue https://github.com/ansible/ansible/issues/32499
if [[ "$(uname)" == "Darwin" ]]
then
    export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=yes;
fi

# Ansible Logging
rm ./ansible.log
export ANSIBLE_LOG_PATH="ansible.log"

# Ansible Debugging
export ANSIBLE_DEBUG=False

# Execute playbook
sudo ansible-playbook -e ansible_python_interpreter=/usr/bin/python3 -i hosts threatbox_playbook.yml 
```

*Note: Consider using Mitogen for Ansible to gain a significant performance boost. https://mitogen.networkgenomics.com/ansible_detailed.html*

### Tested with this ansible.cfg

```
[defaults]
host_key_checking = False
pipelining = True
forks = 100
timeout = 600
stdout_callback = yaml
bin_ansible_callbacks = True
callback_whitelist = profile_roles, profile_tasks, timer

#mitogen
strategy_plugins = ~/Documents/mitogen-0.2.9/ansible_mitogen/plugins/strategy
strategy = mitogen_linear
```

------------------------------------
## Remotely Access the system

### Console access with SSH

Note: SSH may be set to a non-standard port during setup. This value is set in the `group_vars/threatbox.yml` files

```
threatboxip=10.10.10.10
sshport=52222
ssh -p $sshport -i ~/.ssh/threatbox_id_rsa root@$threatboxip
```

### GUI Access with VNC over SSH

Note: VNC is setup but not allowed over the network. You must use an SSH tunnel to access.

```
threatboxip=10.10.10.10
sshport=52222
ssh -p $sshport -i ~/.ssh/threatbox_id_rsa -L 5901:localhost:5901 root@$threatboxip
```
------------------------------------

### Some cool info sites:

https://www.offensive-security.com/

https://hakin9.org/

https://threatexpress.com/

https://inventory.rawsec.ml/index.html

https://www.kitploit.com/

https://exploit.kitploit.com/

https://shop.hak5.org/

https://github.com/threatexpress/



### Test your skill - without getting locked away.

https://hackerone.com/

https://www.hackthissite.org/

https://www.hackthebox.eu/

https://www.vulnhub.com/


### My Shit 

https://chaos711.blogspot.com/ 

https://github.com/psibot

https://www.facebook.com/chaos7110101011
