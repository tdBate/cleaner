#!/bin/sh

echo "Starting cleanup in $(pwd)..."

# 1. Clean Node.js projects
echo "Finding and deleting node_modules directories..."
find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
echo "✓ Node.js cleanup complete."

# 2. Clean Rust projects
echo "Finding Rust projects and running 'cargo clean'..."
find . -name "Cargo.toml" -type f -execdir cargo clean \;
echo "✓ Rust cleanup complete."

echo "All done!"