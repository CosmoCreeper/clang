#!/bin/bash

CWD=$PWD

# Technically script dir but the same in our case
PROJECT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $PROJECT_DIR

# Check for a build, and request one if not found
if [[ ! -d build ]] then
  read -p "No build found. Build now? (y/N) " should_build
  if [[ $should_build == [Yy]* ]] then
    echo "Building..."
    bash build.sh
    echo
  else
    echo "Cannot run a file without a build."
    cd $CWD
    exit 1
  fi
fi

# Must get path before shifting,
# otherwise this would be shifted off
path=$1

# Shifts the path argument off the script args
shift
script_args=$@
launch_exe() {
  exe_path="./build/$1/$(basename $1)"

  if [[ -f $exe_path ]] then
    $exe_path $script_args
    cd $CWD
    exit 0
  fi

  # No executable for path found
  echo "No executable matches specified path."
  cd $CWD
  exit 1
}

# Path is exact file structure path
if [[ -d $path ]] then
  launch_exe $path
fi

# Path is exercise number
exercise_pattern="[0-9]-[0-9]"
if [[ $path =~ $exercise_pattern ]] then
  launch_exe "exercises/$path"
fi

echo "Path format could not be recognized."
echo "Please use 'path/to/folder' or pass an exercise number"
cd $CWD