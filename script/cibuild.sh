#!/bin/bash -e

#
# cibuild.sh
# Builds the project, installing any necessary dependencies for the build server (TravisCI)
#

gem install xcode-install
xcode-install list
xcode-install install "7 beta 5"
xcode-install select "7 beta 5"

#carthage build --no-skip-current

xcodebuild -workspace git2.xcworkspace -scheme git2-iOS -configuration Release build
xcodebuild -workspace git2.xcworkspace -scheme git2-Mac -configuration Release build
