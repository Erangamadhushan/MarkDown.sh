# Shell Scripting Tutorial
** This repository contains practical examples and guides for learning shell scripting in Linux/Unix environments. Follow along with these examples to master the basics of shell scripting.**

## Getting Started
> [!NOTE]
> # Prerequisites

- Access to a Linux/Unix terminal
- Basic understanding of command line operations
- A text editor (like nano, vim, or VS Code)

> [!NOTE]
> # Basic Shell Script Creation
- Create your first shell script:
```
  touch first.sh
```

- Open the file in your preferred text editor and add the following:
```
 #!/bin/bash
 # This is my first shell script
 echo "Hello, Shell Scripting !"
```

- Make the script executable:
```
  chmod u+x first.sh
```
- Run your script:

```
 ./first.sh
```

> [!NOTE]
> # Understanding Shell Script Permissions

- Permission Basics
    - `chmod u+x`: Gives execution permission to the user
    - `chmod 755`:Gives read,write,execute to owner, read and execute to group and others
    - `chmod 700`: Gives full permissions to owner only

- Example:
  ```
  #Create a new Script
  touch script.sh

  #Add execution permission
  chmod u+x script.sh
  ```

> [!NOTE]
> # Script Structure Best Practices

- Always start with a shebang:
```
#!/bin/bash
```

- Include comments for documentation
```
# Script Name: first.sh
# Description: Demonstrates basic shell scripting concepts
# Author: Eranga Madhushan
# Date 2025-02-16
```
- Use meaningfull variable names:
```
# Good practice
user_name="Eranga"
current_date=$(date +%Y-%m-%d)

# Bad practice
n="Eranga"
d=$(date +%Y-%m-%d)
```
## Common Script Components

### Variables
```bash
name="World"
echo "Hello, $name!"
```

### User Input
```bash
read -p "Enter your name: " user_name
echo "Hello, $user_name!"
```

### Conditional Statements
```bash
if [ -f "file.txt" ]; then
    echo "file.txt exists"
else
    echo "file.txt does not exist"
fi
```

### Loops
```bash
for i in {1..5}; do
    echo "Number: $i"
done
```

## Example Scripts

### 1. Basic System Information Script
```bash
#!/bin/bash
# Script to display system information

echo "System Information:"
echo "==================="
echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "System Uptime: $(uptime)"
echo "CPU Info: $(lscpu | grep 'Model name' | cut -f 2 -d ":")"
echo "Memory Info: $(free -h | grep 'Mem:' | awk '{print $2 " total, " $3 " used, " $4 " free"}')"
```

### 2. File Backup Script
```bash
#!/bin/bash
# Simple backup script

source_dir="/path/to/source"
backup_dir="/path/to/backup"
date_stamp=$(date +%Y-%m-%d_%H-%M-%S)

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Create backup
tar -czf "$backup_dir/backup_$date_stamp.tar.gz" "$source_dir"

echo "Backup created: backup_$date_stamp.tar.gz"
```

## Best Practices

1. Error Handling
```bash
#!/bin/bash
# Example of error handling

if ! command -v jq &> /dev/null; then
    echo "Error: jq is not installed"
    exit 1
fi
```

2. Exit Codes
```bash
#!/bin/bash
# Using exit codes

if [ $# -eq 0 ]; then
    echo "Error: No arguments provided"
    exit 1
fi
```

3. Script Debugging
```bash
#!/bin/bash
# Enable debugging
set -x

# Your commands here
echo "Debugging mode enabled"

# Disable debugging
set +x
```

## Contributing

Feel free to contribute to this repository by:
1. Forking the repository
2. Creating a new branch for your feature
3. Submitting a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
