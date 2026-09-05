echo "add_subdirectory($1)" >> exercises/CMakeLists.txt
mkdir "exercises/$1"
echo "project($1 C)
add_executable($1
    main.c
)" >> "exercises/$1/CMakeLists.txt"
touch "exercises/$1/main.c"
