#!/bin/bash

# Task Manager Script

tasks=()

display_menu() {
    echo "============================="
    echo "      Task Manager"
    echo "============================="
    echo "1. Add Task"
    echo "2. List Tasks"
    echo "3. Remove Task"
    echo "4. Exit"
    echo "============================="
}

add_task() {
    read -p "Enter the task description: " task
    if [ -z "$task" ]; then
        echo "Task cannot be empty!"
        return
    fi
    tasks+=("$task")
    echo "Task added: $task"
}

list_tasks() {
    if [ ${#tasks[@]} -eq 0 ]; then
        echo "No tasks available."
        return
    fi
    echo "Tasks:"
    for i in "${!tasks[@]}"; do
        echo "$((i + 1)). ${tasks[i]}"
    done
}

remove_task() {
    list_tasks
    read -p "Enter the task number to remove: " task_number
    #
    if [ "$task_number" -gt "${#tasks[@]}" ]; then
        echo "Invalid task number!"
        return
    fi
    unset 'tasks[$((task_number - 1))]'
    #
    echo "Task removed."
}

while true; do
    display_menu
    read -p "Choose an option (1-4): " option

    case $option in
        1)
            add_task
            ;;
        2)
            list_tasks
            ;;
        3)
            remove_task
            ;;
        4)
            echo "Exiting Task Manager."
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 4."
            ;;
    esac
done
