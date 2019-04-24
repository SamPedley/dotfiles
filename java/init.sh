#!/usr/bin/env bash

# Install the latest java version
brew cask install java

# Install open JDK 8,9 & 10
brew cask install adoptopenjdk8
brew cask install adoptopenjdk9
brew cask install adoptopenjdk10


# Set the java version to openJDK 1.8
# Best to keep this in the bas_profile to set as default
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
