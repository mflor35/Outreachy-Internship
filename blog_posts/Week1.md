In these couple of weeks, it is been a challenge to keep myself focused. This is the first time I work remotely, and at first I thought it would be a piece of cake, but as it turns out it is not that easy. Thankfully, Paul has a [video](https://youtu.be/5zVnC7Ynopk) to tackle this.

I finished looking at the [scripts](http://pkgs.fedoraproject.org/cgit/rpms/kernel.git/tree/scripts?h=f24), the maintainers of the fedora kernel use during the development process. I created a list of all the scripts with a short summary for my mentor and the rest of the maintainers to look at. 

After discussing with the kernel team we concluded that some of the script's functionality was already in the [kernel.spec](http://pkgs.fedoraproject.org/cgit/rpms/kernel.git/tree/kernel.spec?id=4f7dd5f5086c76d10e0144403e5aa7febdae666b) and were not needed any more, so my job was to submit a patch to delete them. There were also scripts that previous maintainers used and were not relevant to the project. The rest of the scripts were useful but needed to be fixed. 

Brief summary of my To-Do list:

```
To delete:
- allarchconfig.sh 
- rediffall.sh
- bumspecfile.py

To inspect fix/improve:
- fast-x86_64
- generate-git-snapshot.sh
- grab-logs.sh

New: 
- check-patch.sh
```
 
Previous to this internship, I had very little experience with bash scripting. I learned the basics by reading [The Linux Command Line](http://linuxcommand.org/tlcl.php) by William Shotts. I learned a great deal by analyzing each of the scripts. Usually when something goes wrong in other programming languages you get some useful description of the error. It is not the case for bash scripting! You can either fill you script with ```echo``` statements or run a script in debug mode ``` bash -x script.sh``` to help you debug it.
