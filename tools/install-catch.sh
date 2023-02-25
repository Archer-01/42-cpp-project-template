#!/bin/bash

# install-catch.sh: Install Catch unit testing framework

if [ $(basename $PWD) != "catch" ]; then
	>&2 echo "Please run this script from the project root directory"
	exit 1
fi

if [ ! -f "include/catch.hpp" ]; then
	curl -sLO "https://github.com/philsquared/Catch/releases/download/v1.12.2/catch.hpp"
	mv catch.hpp include
fi

echo "Catch installed successfully"
