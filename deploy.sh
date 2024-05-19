__AMBER_ARRAY_0=(".config");
__0_dirs=("${__AMBER_ARRAY_0[@]}");
index=0;
for dir in "${__0_dirs[@]}"
do
    cp -r ./files/${dir} ~/${dir}
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
        echo "Failed to copy ${dir}"
fi
    let index=${index}+1
done;
__AMBER_ARRAY_1=(".aliases" ".bash_profile" ".bashrc" ".gitconfig" ".gitconfig" ".zshrc");
__1_files=("${__AMBER_ARRAY_1[@]}");
index=0;
for file in "${__1_files[@]}"
do
    cp ./files/${file} ~/${file}
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
        echo "Failed to copy ${file}"
fi
    let index=${index}+1
done