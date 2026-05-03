#!/bin/bash

# CV Version Switcher
# Easy way to switch between different CV versions

echo "=========================================="
echo "    CV VERSION SWITCHER"
echo "=========================================="
echo ""
echo "Available CV Versions:"
echo ""
echo "1) Python/Backend Focus (cv-python-backend)"
echo "2) Java/Backend Focus (cv-java-backend)"
echo "3) Laravel/PHP Full Stack (cv-laravel-fullstack)"
echo "4) Frontend React/Vue.js (cv-frontend-react-vue)"
echo "5) .NET/C# Backend (cv-dotnet-backend)"
echo "6) Main/Current (main)"
echo ""
echo "=========================================="
echo ""

# Function to switch branch
switch_branch() {
    local branch=$1
    echo "Switching to: $branch"
    git checkout $branch
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Successfully switched to $branch"
        echo ""
        echo "Current branch: $(git branch --show-current)"
        echo ""
        echo "To view your CV, open: index.html"
        echo "To push this version live: git push origin $branch --force"
    else
        echo "❌ Failed to switch branch"
    fi
}

# Check if argument provided
if [ $# -eq 0 ]; then
    read -p "Enter your choice (1-6): " choice
else
    choice=$1
fi

case $choice in
    1)
        switch_branch "cv-python-backend"
        ;;
    2)
        switch_branch "cv-java-backend"
        ;;
    3)
        switch_branch "cv-laravel-fullstack"
        ;;
    4)
        switch_branch "cv-frontend-react-vue"
        ;;
    5)
        switch_branch "cv-dotnet-backend"
        ;;
    6)
        switch_branch "main"
        ;;
    *)
        echo "Invalid choice. Please run again and select 1-6"
        exit 1
        ;;
esac
