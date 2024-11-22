#!/bin/bash

# Dependency name and new version as arguments
DEPENDENCY_NAME=$1
NEW_VERSION=$2

# macOS compatible sed command
sed -i '' "/- name: $DEPENDENCY_NAME/,/version: /s/version: .*/version: $NEW_VERSION/" Chart.yaml