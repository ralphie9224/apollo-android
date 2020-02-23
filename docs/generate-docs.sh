#!/bin/bash
#
# Set up documentation so README.md is reflected onto apollographql.com/docs/android

echo -e  "---
          title: Get started
          description: Learn how to quickly set up Apollo Client in your Android app
          ---
          $(cat ../README.md | grep -v 'the official docs')" > source/essentials/get-started.md


cat source/essentials/get-started.md

gatsby build --prefix-paths
mkdir -p docs/android
mv public/* docs/android
mv docs public/
mv public/docs/android/_redirects public