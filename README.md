# Shell Scripting – Learning Documentation

## 📌 Overview

This repository contains my learning notes, examples, and practice scripts for **Shell Scripting in Linux**.

The goal of this repository is to understand Linux shell scripting concepts, automate repetitive tasks.

## 🎯 Learning Objectives

- Understand Linux Shell and Bash.
- Learn basic Linux commands.
- Write and execute shell scripts.
- Work with variables, operators, and user input.
- Implement conditional statements and loops.
- Understand functions and command-line arguments.
- Perform file and directory operations.
- Handle errors and exit statuses.
- Automate repetitive tasks using shell scripts.
- Practice real-world automation examples.

## 📚 Table of Contents

1. [Introduction to Shell Scripting](#1-introduction-to-shell-scripting)
2. [What Is a Shell?](#2-what-is-a-shell)
3. [What Is a Shell Script?](#3-what-is-a-shell-script)
4. [Getting Started](#4-getting-started)
5. [Basic Linux Commands](#5-basic-linux-commands)
6. [Variables](#6-variables)
7. [User Input](#7-user-input)
8. [Operators](#8-operators)
9. [Conditional Statements](#9-conditional-statements)
10. [Loops](#10-loops)
11. [Functions](#11-functions)
12. [Command-Line Arguments](#12-command-line-arguments)
13. [File and Directory Operations](#13-file-and-directory-operations)
14. [Exit Status and Error Handling](#14-exit-status-and-error-handling)
15. [Working with Text](#15-working-with-text)
16. [Scheduling and Automation](#16-scheduling-and-automation)


---

## 1. Introduction to Shell Scripting

Shell scripting is the process of writing a series of commands in a file and executing them together.

It helps automate repetitive tasks, manage files, monitor systems, and perform administrative operations.

### Benefits of Shell Scripting

- Automates repetitive tasks.
- Reduces manual effort.
- Improves productivity.
- Simplifies system administration.
- Helps with log analysis and monitoring.
- Supports DevOps workflows and CI/CD automation.

## 2. What Is a Shell?

A shell is a command-line interpreter that allows users to interact with the operating system.

It accepts commands, executes programs, and displays results.

### Common Types of Shells

| Shell | Description |
|---|---|
| `sh` | Traditional Unix shell |
| `bash` | Bourne Again Shell; widely used on Linux |
| `zsh` | Interactive shell with advanced features |
| `ksh` | Korn shell |
| `fish` | User-friendly interactive shell |

Check the current shell:

```bash
echo "$SHELL"
```

Check the Bash version:

```bash
bash --version
```

## 3. What Is a Shell Script?

A shell script is a text file containing shell commands that execute in sequence.

Shell scripts commonly use the `.sh` extension.

### Example: Hello World

Create a file named `hello.sh`:

```bash
#!/bin/bash

echo "Hello, World!"
```

### Explanation

- `#!/bin/bash` specifies the interpreter.
- `echo` prints text to the terminal.
- Comments begin with `#`, except for the interpreter directive conventionally placed at the beginning of the script.

### Execute the Script

```bash
bash hello.sh
```

Alternatively, make it executable:

```bash
chmod +x hello.sh
./hello.sh
```

## 4. Getting Started

You need a Linux environment or a compatible Unix-like environment to practice shell scripting.

### Check Your Environment

```bash
uname -a
pwd
whoami
```

### Create a Learning Directory

```bash
mkdir shell-scripting
cd shell-scripting
```

### Create Your First Script

```bash
touch first_script.sh
```

Edit the file using an editor such as `nano` or `vim`:

```bash
nano first_script.sh
```

Add:

```bash
#!/bin/bash

echo "Learning Shell Scripting"
date
pwd
```

Save the file and execute it:

```bash
bash first_script.sh
```

## 5. Basic Linux Commands

These commands are useful when writing shell scripts.

| Command | Purpose | Example |
|---|---|---|
| `pwd` | Display current directory | `pwd` |
| `ls` | List files | `ls -l` |
| `cd` | Change directory | `cd /tmp` |
| `mkdir` | Create a directory | `mkdir test` |
| `touch` | Create an empty file | `touch file.txt` |
| `cp` | Copy files | `cp a.txt b.txt` |
| `mv` | Move or rename files | `mv old.txt new.txt` |
| `rm` | Remove files | `rm file.txt` |
| `cat` | Display file contents | `cat file.txt` |
| `grep` | Search text | `grep "error" app.log` |
| `find` | Find files | `find . -name "*.sh"` |
| `chmod` | Change permissions | `chmod +x script.sh` |
| `date` | Display date and time | `date` |
| `whoami` | Display current user | `whoami` |

**Note:** Use destructive commands such as `rm` carefully, especially when variables or wildcards are involved.

## 6. Variables

Variables store values that can be reused in a script.

### Defining Variables

```bash
#!/bin/bash

name="Linux"
course="Shell Scripting"

echo "Learning $name"
echo "Course: $course"
```

### Important Rules

- Do not put spaces around `=` when assigning a variable.
- Use `$variable` to access its value.
- Prefer double quotes around variable expansions.
- Use descriptive variable names.

### Command Substitution

Command substitution stores the output of a command in a variable.

```bash
current_date=$(date +%F)
current_user=$(whoami)

echo "Date: $current_date"
echo "User: $current_user"
```

### Read-Only Variables

```bash
readonly PI=3.14
echo "$PI"
```

## 7. User Input

The `read` command accepts input from the user.

### Using `read -p`

```bash
#!/bin/bash

read -p "Enter your name: " name

echo "Your name is: $name"
```
Input:
```
1.Rahul
2.Hello\ World
```
Output:
```
1.Your name is Rahul
2.Your name is Hello World
```

### Reading Two Values

```bash
read -r -p "Enter first number: " a
read -r -p "Enter second number: " b

echo "First number: $a"
echo "Second number: $b"
```

Use `read -r` to prevent backslashes from being interpreted as escape characters.

## 8. Operators

Operators perform arithmetic, comparisons, and logical operations.

### Arithmetic Operators

```bash
a=10
b=5

echo "$((a + b))"
echo "$((a - b))"
echo "$((a * b))"
echo "$((a / b))"
echo "$((a % b))"
```

### Numeric Comparisons

Within Bash's `[[ ... ]]` conditional syntax:

| Operator | Meaning |
|---|---|
| `-eq` | Equal |
| `-ne` | Not equal |
| `-gt` | Greater than |
| `-lt` | Less than |
| `-ge` | Greater than or equal |
| `-le` | Less than or equal |

Example:

```bash
a=10
b=5

if [[ "$a" -gt "$b" ]]; then
    echo "a is greater than b"
fi
```

### String Comparisons

```bash
name="Linux"

if [[ "$name" == "Linux" ]]; then
    echo "Match found"
fi
```

## 9. Conditional Statements

Conditional statements execute commands based on whether a condition is true or false.

### if Statement

```bash
#!/bin/bash

read -r -p "Enter your age: " age

if [[ "$age" -ge 18 ]]; then
    echo "You are an adult."
fi
```

This example assumes the input is a valid integer.

### if-else Statement

```bash
#!/bin/bash

read -r -p "Enter a number: " number

if [[ "$number" -gt 0 ]]; then
    echo "Positive number"
else
    echo "Zero or negative number"
fi
```

### if-elif-else Statement

```bash
#!/bin/bash

read -r -p "Enter a number: " number

if [[ "$number" -gt 0 ]]; then
    echo "Positive"
elif [[ "$number" -lt 0 ]]; then
    echo "Negative"
else
    echo "Zero"
fi
```

### Case Statement

```bash
#!/bin/bash

read -r -p "Enter an environment (dev/test/prod): " environment

case "$environment" in
    dev)
        echo "Development environment"
        ;;
    test)
        echo "Testing environment"
        ;;
    prod)
        echo "Production environment"
        ;;
    *)
        echo "Invalid environment"
        ;;
esac
```

## 10. Loops

Loops execute a block of commands repeatedly.

### for Loop

```bash
#!/bin/bash

for number in 1 2 3 4 5; do
    echo "Number: $number"
done
```

### C-Style for Loop

```bash
for ((i = 1; i <= 5; i++)); do
    echo "$i"
done
```

### while Loop

```bash
#!/bin/bash

count=1

while [[ "$count" -le 5 ]]; do
    echo "$count"
    ((count += 1))
done
```

### until Loop

An `until` loop continues until its condition becomes true.

```bash
count=1

until [[ "$count" -gt 5 ]]; do
    echo "$count"
    ((count += 1))
done
```

### break and continue

- `break` exits a loop.
- `continue` skips the current iteration and proceeds to the next one.

## 11. Functions

Functions group reusable commands into a named block.

```bash
#!/bin/bash

greet() {
    local name="$1"
    echo "Hello, $name!"
}

greet "Linux"
greet "Bash"
```

### Function with Return Status

```bash
check_file() {
    [[ -f "$1" ]]
}

if check_file "/etc/passwd"; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

In Bash, `return` sets a function's exit status, usually an integer from 0 to 255. Use `echo` or another output mechanism when you need to return data.

## 12. Command-Line Arguments

Shell scripts can accept arguments when they are executed.

Example script:

```bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: ${1:-}"
echo "Second argument: ${2:-}"
echo "Number of arguments: $#"
echo "All arguments: $@"
```

Execute it:

```bash
bash arguments.sh Linux Bash
```

### Common Special Variables

| Variable | Meaning |
|---|---|
| `$0` | Script name or invocation path |
| `$1`, `$2` | First and second positional arguments |
| `$#` | Number of positional arguments |
| `"$@"` | All positional arguments as separate words |
| `"$*"` | All positional arguments combined into one word when quoted |
| `$?` | Exit status of the previous command |

Prefer `"$@"` when passing arguments to another command because it preserves argument boundaries.

## 13. File and Directory Operations

### Check Whether a File Exists

```bash
#!/bin/bash

file="example.txt"

if [[ -f "$file" ]]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

### Common File Tests

| Test | Meaning |
|---|---|
| `-e` | Path exists |
| `-f` | Regular file exists |
| `-d` | Directory exists |
| `-r` | Path is readable |
| `-w` | Path is writable |
| `-x` | Path is executable |

### Create a Directory If It Does Not Exist

```bash
#!/bin/bash

directory="logs"

if [[ ! -d "$directory" ]]; then
    mkdir -p "$directory"
    echo "Directory created"
else
    echo "Directory already exists"
fi
```

### Read a File Line by Line

```bash
#!/bin/bash

while IFS= read -r line || [[ -n "$line" ]]; do
    echo "$line"
done < "example.txt"
```

This pattern preserves whitespace and handles a final line without a newline.

## 14. Exit Status and Error Handling

Commands return an exit status to indicate success or failure.

- `0` generally means success.
- A nonzero status generally indicates failure.

### Check Exit Status

```bash
#!/bin/bash

mkdir -p output

if [[ $? -eq 0 ]]; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
```

Prefer checking commands directly when possible:

```bash
if mkdir -p output; then
    echo "Directory is ready"
else
    echo "Failed to create directory" >&2
    exit 1
fi
```

### The exit Command

```bash
#!/bin/bash

echo "Operation completed"
exit 0
```

Use `exit 1` or another nonzero status when a script needs to report failure.

### Strict Mode

```bash
#!/bin/bash

set -Eeuo pipefail

echo "Script started"
```

These options can help catch errors and unset variables, but they change how scripts behave in some situations. Understand their limitations and test scripts that use them.

## 15. Working with Text

Shell scripts often process logs, configuration files, and command output.

| Command | Purpose |
|---|---|
| `grep` | Search matching lines |
| `sed` | Transform text |
| `awk` | Process structured text |
| `cut` | Extract fields |
| `sort` | Sort lines |
| `uniq` | Identify adjacent duplicate lines |
| `wc` | Count lines, words, and bytes |
| `head` | Display the beginning of a file |
| `tail` | Display the end of a file |
| `tr` | Translate or delete characters |

### Examples

Search for errors:

```bash
grep -i "error" application.log
```

Display the last 10 lines:

```bash
tail -n 10 application.log
```

Count lines:

```bash
wc -l application.log
```

Print the first column of a comma-separated file:

```bash
awk -F',' '{print $1}' data.csv
```

**Note:** For CSV files containing quoted fields or embedded commas, use a CSV-aware tool rather than assuming `awk -F','` fully parses CSV.

## 16. Scheduling and Automation

### Schedule Tasks with Cron

Cron runs commands or scripts at scheduled times.

Open the current user's crontab:

```bash
crontab -e
```

Example: run a script every day at 2:00 AM.

```cron
0 2 * * * /home/user/scripts/backup.sh
```

Example: run a script every five minutes.

```cron
*/5 * * * * /home/user/scripts/monitor.sh
```

Use absolute paths and configure logging where needed. Cron runs with a more limited environment than an interactive terminal.

### Redirect Output to a Log

```bash
./script.sh >> script.log 2>&1
```

This appends standard output and standard error to the same log file.


---

## 🚀 Conclusion

This repository serves as my personal reference for learning and practicing Linux Shell Scripting.

I will continue adding scripts, notes, examples, troubleshooting tips, and automation projects as I progress from basic concepts to advanced scripting.

**Learn → Practice → Automate → Improve**
