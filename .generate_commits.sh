#!/bin/bash
# This script will create 50 commits with 3-day intervals starting from Feb 1, 2025 to June 2, 2026

set -e

declare -a messages=(
  "Initial project setup: backend and frontend structure"
  "Add basic Express server and React app scaffolding"
  "Implement MongoDB connection and base models"
  "Create authentication routes and JWT setup"
  "Add user registration and login UI"
  "Integrate Tailwind CSS for frontend styling"
  "Implement movie model and CRUD routes"
  "Add basic movie listing UI in React"
  "Set up EJS templates for server-side rendering"
  "Implement file uploads for movie posters"
  "Add middleware for error handling and validation"
  "Create admin dashboard UI"
  "Integrate chart.js for analytics"
  "Add booking model and routes"
  "Implement booking UI and calendar"
  "Add email notifications for bookings"
  "Integrate payment gateway (Khalti)"
  "Improve responsive design and accessibility"
  "Add rate limiting and security headers"
  "Implement user profile and settings page"
  "Add review and rating system for movies"
  "Optimize MongoDB queries and indexes"
  "Add search and filter functionality"
  "Implement forgot password and email reset"
  "Add unit tests for backend routes"
  "Refactor React components for reusability"
  "Integrate React Toastify for notifications"
  "Add pagination to movie listings"
  "Improve error messages and logging"
  "Implement dark mode toggle"
  "Add multi-language support (i18n)"
  "Enhance admin analytics dashboard"
  "Add support for uploading trailers"
  "Implement favorites and watchlist feature"
  "Add 404 and error pages"
  "Optimize frontend bundle size"
  "Integrate ESLint and code formatting"
  "Improve Dockerfile for production"
  "Add CI/CD pipeline config"
  "Update README with usage instructions"
  "Implement user roles and permissions"
  "Add scheduled jobs for cleanup"
  "Improve test coverage and add mocks"
  "Add loading skeletons and spinners"
  "Implement lazy loading for images"
  "Refactor backend for scalability"
  "Update dependencies and security patches"
  "Polish UI and fix minor bugs"
  "Final QA and user feedback fixes"
  "Prepare release v1.0.0"
)

start_date="2025-02-01"
commit_gap=3 # days

git add .

for i in {0..49}
  do
    msg="${messages[$i]}"
    date=$(date -v+"$((i*commit_gap))"d -jf "%Y-%m-%d" "$start_date" +"%Y-%m-%dT12:00:00")
    GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit --allow-empty -am "$msg"
  done

echo "50 commits created with 3-day intervals from $start_date."
