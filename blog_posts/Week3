During this week I managed to test a bunch of different rpmbuild combinations. rmpbuild is used to compile a custom kernel ```--with``` or ```--without``` certain components. 
``` bash
rpmbuild --target x86_64 --without debuginfo --without perf --without tools
```
For example the command above will compile the kernel for the ```--target``` architecture x86_64 ```--without``` any debug information ```--without``` [perf](http://www.brendangregg.com/perf.html) tools and ```--without``` any other tools. That is one of the many possible combinations. I did not test all of them checkout the [my github page](https://github.com/mflor35/Outreachy-Internship/blob/master/To-Do.txt#L111) for some of my notes.

I sent patches for a batch of patches for scripts needed to be deleted like ``` allarchconfig.sh```,```rediffall.sh``` and ```bumspec.py```. All of which got accepted right away. You can see a list of all the patches that have been accepted [here](http://pkgs.fedoraproject.org/cgit/rpms/kernel.git/log/?qt=grep&q=Miguel).

I got some feedback for the rest of the scripts and will be updating those soon. 
