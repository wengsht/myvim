find /Users/wengsht/Dropbox/wiki | grep -e png -e jpg | sed 's;\(^.*$\);\1 \1;' | sed 's;^;cp ;' | sed 's;Dropbox/wiki;Program/wengsht.github.com/wiki;2' | sh
