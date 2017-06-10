#! /bin/sh

for x
do
    echo "editing $x: \c"
    if test "$x" = sedscr; then
        echo "not editing sedscript"
    elif test -s $s; then
        sed -f sedscr $x > /tmp/$x$$
        if cmp -s  $x /tmp/$x$$; then
        else
            mv $x $x.bak #save original , just in case
            cp /tmp/$x$$ $x
            echo "done"
        fi
done