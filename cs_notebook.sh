init(){
        touch notebook
        #wget
}

banner(){
        echo "----------------------------------------------------------"
}
#####################start
clear
banner
echo "*command a:add a new note in exist notebook"
echo "*command s:search text in exist notebook"
echo "*command i:init"
banner

echo "enter your command"
cmd=$(sed 1q)
echo "enter your notes wanna search/add"
notes=$(sed 1q)
echo \"$cmd\" notes \"$notes\" sure you want it?[y/*]
y-or-n=$(sed 1q)
if   [ $y-or-n = "y" ]; then
sleep 1
clear
case $cmd in
        a)
                echo $notes >> notebook
                ;;
        s)
                cat notebook cheatsheet|grep -n --color=auto $notes
                ;;
        i)
                init
                ;;
        *)
                echo "error"
                ;;
esac
echo success!
fi
