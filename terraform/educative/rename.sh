for i in *;
do 
    if [[ -d $i ]] ; 
    then
        # echo $i
        # name=`echo "$i" | cut -d '_' -f 1` 
        name=`echo "$i" | cut -c 7-50` 

        echo "Renaming Folder to : $name" 
        mv "$i" "$name"
    fi
done