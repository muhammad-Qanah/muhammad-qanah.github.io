# CV Version Management System

This repository uses Git branches to maintain different versions of your CV, each optimized for different tech stacks and job roles.

## Available CV Versions

| Branch Name | Focus | Primary Skills |
|------------|-------|----------------|
| `main` | Current/Default | Latest version (currently Python/Backend) |
| `cv-python-backend` | Backend Engineer | Python, Golang, APIs, Microservices, AWS/Azure |
| `cv-java-backend` | Java Backend | Java, Spring Boot, Microservices, Kafka |
| `cv-laravel-fullstack` | Full Stack PHP | Laravel, PHP, Vue.js, MySQL |
| `cv-frontend-react-vue` | Frontend Developer | React.js, Vue.js, Next.js, JavaScript, UI/UX |
| `cv-dotnet-backend` | .NET Backend | C#, .NET Core, ASP.NET, Entity Framework |

## How to Switch Between CV Versions

### Method 1: Using the Helper Script (Easiest)
```bash
./switch-cv.sh
```
Then select the version number (1-6) from the menu.

### Method 2: Direct Command
```bash
# Switch to Python/Backend version
git checkout cv-python-backend

# Switch to Java version
git checkout cv-java-backend

# Switch to Laravel version
git checkout cv-laravel-fullstack

# Switch to Frontend version
git checkout cv-frontend-react-vue

# Switch to .NET version
git checkout cv-dotnet-backend

# Back to main
git checkout main
```

## Updating a Specific CV Version

1. **Switch to the branch you want to update:**
   ```bash
   git checkout cv-python-backend
   ```

2. **Make your changes to index.html**

3. **Commit the changes:**
   ```bash
   git add index.html
   git commit -m "Update Python backend CV"
   ```

4. **Push to GitHub:**
   ```bash
   git push origin cv-python-backend
   ```

## Publishing a Version Live

To make a specific version live on your GitHub Pages site:

```bash
# Switch to the version you want
git checkout cv-python-backend

# Push to main (this will go live)
git push origin cv-python-backend:main --force
```

⚠️ **Warning**: This will overwrite the current live version!

## Creating a New CV Version

```bash
# Create a new branch from current version
git checkout -b cv-nodejs-backend

# Make your changes
# Commit and push
git push origin cv-nodejs-backend
```

## Tips

- **Before switching**: Make sure to commit or stash any unsaved changes
- **Check current branch**: `git branch` (current branch has a * next to it)
- **View all branches**: `git branch -a`
- **Keep versions in sync**: Regularly merge common updates from main to other branches

## Quick Reference Commands

```bash
# See what branch you're on
git branch --show-current

# List all branches
git branch

# See pending changes
git status

# View differences
git diff

# Discard local changes
git checkout -- index.html
```

## Workflow Example

```bash
# 1. Switch to Java version
./switch-cv.sh
# Select option 2

# 2. Make changes to highlight Java skills
# Edit index.html

# 3. Save and commit
git add index.html
git commit -m "Emphasize Spring Boot and Kafka experience"

# 4. Push the branch
git push origin cv-java-backend

# 5. If you want this live, force push to main
git push origin cv-java-backend:main --force
```
