#!/bin/bash

echo -e "\033[0;32mDeploying new blog...\033[0m"

echo -e "\033[0;32mDeleting old site...\033[0m"
rm -rf ~/Desktop/complexbeings.github.io/posts/

echo -e "\033[0;32mRunning hugo...\033[0m"
hugo -d ../complexbeings.github.io

echo -e "\033[0;32mChanging to blog directory...\033[0m"
cd ../complexbeings.github.io

echo -e "\033[0;32mCommit and push the new build...\033[0m"
git commit -am "New Blog Build (`date`)"
git push

echo -e "\033[0;32mChange back to hugo-blog...\033[0m"
cd ../site-hugo

echo -e "\033[0;32mDeploy complete.\033[0m"
