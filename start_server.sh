#!/bin/bash
cd /home/ec2-user/app
# Kill any process using port 3000 (if any)
fuser -k 3000/tcp || true
# Start the app in the background
nohup npm start > app.log 2>&1 &
