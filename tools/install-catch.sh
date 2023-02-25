#!/bin/bash

# install-catch.sh: Install Catch unit testing framework
# NOTE: This script is meant to run in the root directory of the project.

if [ ! -f "include/catch.hpp" ]; then
	curl -sLO "https://github.com/philsquared/Catch/releases/download/v1.12.2/catch.hpp"
	mv catch.hpp include
fi

echo "Catch installed successfully"
