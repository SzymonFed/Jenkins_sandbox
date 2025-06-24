#!/bin/bash

echo "=== Starting Python App ==="

# Optional: kill any existing process running main.py
echo "Stopping previous instances (if any)..."
pkill -f "src/main.py" || echo "No existing process found."

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate

# Start the app in the background
echo "Running app..."
nohup python src/main.py > app.log 2>&1 &

echo "App started. Logs are in app.log"