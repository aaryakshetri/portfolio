#!/bin/bash

# ===== CONFIGURE THESE EACH TIME =====
REPO_URL="https://github.com/aaryakshetri/portfolio"

DATE1="2024-12-10T19:21:00"
DATE2="2025-04-20T21:14:00"

MSG1="Initial project setup"
MSG2="Implemented core logic"


# ===== RESET GIT =====
rm -rf .git
git init


# ===== FIRST COMMIT =====
git add .
GIT_AUTHOR_DATE="$DATE1" GIT_COMMITTER_DATE="$DATE1" git commit -m "$MSG1"

# ===== SECOND COMMIT =====
git add .
GIT_AUTHOR_DATE="$DATE2" GIT_COMMITTER_DATE="$DATE2" git commit -m "$MSG2"

# ===== CONNECT & PUSH =====
git remote add origin "$REPO_URL"
git branch -M main
git push -u origin main