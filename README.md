# clang

A collection of complete exercises from the second edition C programming language book.
Also included on this repository are a few custom programs intended to test out skills.

The build script listed on this repository will build every program into the build folder. The run script will execute one of the C programs based on the path you pass it. You can use the run script like this:
```sh
./run.sh 1-3 # Executes exercise 1-3
./run.sh formatted-print # Executes custom formatted-print program
./run.sh exercises/1-3 # Also executes exercise 1-3
./run.sh 1-3 "user" # Executes exercise 1-3 with the argument "user"
```