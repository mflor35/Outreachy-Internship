Probably the most intimidating aspect of contributing to open source is that someone else is going to look at your code and give you some feedback on it. For me I had no problem getting feedback from my mentor but it was nerve wrecking when I had to send my patches to the [kernel@lists.fedoraproject.org](https://lists.fedoraproject.org/archives/list/kernel%40lists.fedoraproject.org/) and get feedback from someone I completely did not know. Luckily for me the kernel maintainer at Fedora are awesome and the rest of the contributors are nice as well.  

Here are some of the mistakes I made and the feedback I got.

__1. Not testing patches thoroughly before sending__ 

```diff
+# Check for both a Patch and a description
+if [ -z "$1" ] && [ -z "$2" ]; then

This misses the case of no description since $1 will be defined
and the && will fail. Try counting the number of arguments with
$# instead of checking each one individually.[ Mentor]

+    echo "usage: $0 [ /path/to/patch/ ] [ description ]"
+    exit 1
+fi
+

You don't actually get the right behavior most places if $1 exists
outside the tree. If I test with [Mentor]

./scripts/newpatch.sh ~/Downloads/some-patch.patch "A new patch" 
```
__2. Adding a feature without consulting with mentor__
```
+read -p "Would you like to override this? [y/n] " -n 1 -r
+echo
+if [[ $REPLY =~ ^[Yy]$ ]];
+then

Can you give a small prompt here explaining what you will be prompting
for next? The first time I tried to run this I didn't know there would
be a 2nd prompt and just gave the full x.y in the version prompt. [mentor]

+    read -p "Version: " KERNEL_VERSION
+    read -p "Patch Level: " KERNEL_PATCHLEVEL 
```

__3. Summary and changelog when sending patches for review__
```
> Signed-off-by: Miguel Flores Silverio <floresmigu3l@gmail.com>
> ---

Request for when you are sending out another version of a patch (v2, v3
etc.) Can you give a small summary right below the commit here describing
what has changed since the previous version? This is simple enough I
can go back and review but it's a good habit to get into for larger
patch sets.[Mentor]

>  scripts/generate-perf-man.sh | 36 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100755 scripts/generate-perf-man.sh 
```
__4. Double check emails before sending__
I sent the patch to [kernel@lists.projectfedora.org]() instead of [kernel@lists.fedoraproject.org](). 
```
I think you got the kernel list wrong, can you resend? [Mentor]

On 06/21/2016 05:21 PM, Miguel Flores Silverio wrote:
> Download the build logs for a list of architectures. Only
> downloads the logs if they are present in the server. Logs
> are saved in logs directory within the source tree.
>
> By default looks at build logs for i686, x86_64, noarch and
> armv7hl. 
```
This internship has been an all around learning experience. From learning the different tools used in the kernel development, shell scripting to communicate effectively with the rest of the team. I also learned to not take constructive criticism too personal. I am not going to lie, it stings at first but once you realized that it is an essential part of software development and crucial to develop further your skill you will ask for more!

For an up to date version of my ToDo list check out this [github repo](https://github.com/mflor35/Outreachy-Internship/blob/master/To-Do.txt).