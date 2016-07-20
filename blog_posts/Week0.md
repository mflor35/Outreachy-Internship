This week was the start of my internship. I had a meeting with my mentor to discuss logistics and tasks in order to get started.

My initial tasks this week was to add my blog to [Fedora Planet](http://fedoraplanet.org/). Which I thought it would be a fairly easy process, I mean, the [wiki](https://fedoraproject.org/wiki/Planet?rd=Planet_HowTo) is pretty straight forward, except for the fact that it does not mention that you must be a member of CLA group and a Non-CLA group to get access. Other than that, the process was fairly smooth :).

Another tasks we discussed were to:

- add support for LINUX_GIT in perf-man.sh
- Look at scripts under the [scripts directory](http://pkgs.fedoraproject.org/cgit/rpms/kernel.git/tree/scripts), categorize them and give a small summary of what each script does.
- Test the different combinations to build a custom kernel for x86_64

It took me sometime to figure out that LINUX\_GIT was simply a variable set to point to the path of a clone of [Linus's kernel](https://github.com/torvalds/linux). There was a comment saying what LINUX\_GIT needed to be "set to the upstream git tree," but I was not sure what that actually meant.

Compiling the kernel takes me around 2 hrs to 3 hrs in my old laptop (I think it is time to upgrade!), the testing the different combinations is going to take a while.