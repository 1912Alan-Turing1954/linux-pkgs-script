# *linux-pkgs-script*

### These are bash instalation file for my most used softwares and applications on linux systems.
### It has install bash files along with removal files. They are used for a cleaned slate linux distro with no packages downloaded yet.

### Warning: the files/applications that will be installed will be a list of my most used applications and softwares.

# Step 1:
### Clone the repository to access the primary scripts.
~~~
  git clone https://github.com/1912Alan-Turing1954/linux-pkgs-script.git
~~~

# Step 2:
## Cd into the directory/repository you previously cloned.
~~~
  Cd linux-pkgs-script
~~~
# Step 3:
## list the files in directory and there attributes.
~~~
  ls -la
~~~
# Step 4:
## change the attributes for the removal and install files to 'exacutable'.
~~~
  chmod 700 install-pkgs.sh remove_pkgs.sh
~~~
## *chmod 700* will give only the current user the ability to execute the scripts. 
