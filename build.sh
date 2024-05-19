__AMBER_ARRAY_0=("backup" "build" "deploy" "import");
__0_files=("${__AMBER_ARRAY_0[@]}");
index=0;
for file in "${__0_files[@]}"
do
    amber ./scripts/${file}.ab ./${file}.sh
__AMBER_STATUS=$?;
if [ $__AMBER_STATUS != 0 ]; then
        echo "Failed to build ${file}.ab"
fi
    let index=${index}+1
done