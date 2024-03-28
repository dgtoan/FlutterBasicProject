import 'package:flutter/material.dart';
import 'package:todo_simple/todo/view/show_add_todo.dart';
import 'package:todo_simple/todo/widgets/widgets.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: totoAppbar(context),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Todo',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 16),
            totoListTask(),
          ],
        ),
      ),
      floatingActionButton: todoFloatingButton(context)
    );
  }

  FloatingActionButton todoFloatingButton(BuildContext context) {
    return FloatingActionButton.extended(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      onPressed: () { showAddTodo(context); },
      backgroundColor: Theme.of(context).colorScheme.primary,
      label: Text(
        'Add Task',
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      icon: Icon(
        Icons.add,
        color: Theme.of(context).colorScheme.onPrimary,
        size: 32,
      ),
    );
  }

  Expanded totoListTask() {
    var listTask = [
        {
            "id": 1,
            "title": "Build a todo app",
            "description": "Build a todo app using React, Node.js, Express.js, and MongoDB.",
            "deadline": "10:00 PM",
            "completed": false
        },
        {
            "id": 2,
            "title": "Learn React",
            "description": "Learn React from the official documentation.",
            "deadline": "11:00 AM",
            "completed": true
        },
        {
            "id": 3,
            "title": "Learn Node.js",
            "description": "Learn Node.js from the official documentation.",
            "deadline": "15:00 PM",
            "completed": false
        },
        {
            "id": 4,
            "title": "Learn Express.js",
            "description": "Learn Express.js from the official documentation.",
            "deadline": "10:00 PM",
            "completed": true
        },
        {
            "id": 5,
            "title": "Learn MongoDB",
            "description": "Learn MongoDB from the official documentation.",
            "deadline": "12:00 AM",
            "completed": false
        }
    ];

    return Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (index == listTask.length) {
                  return const SizedBox(height: 80);
                } 
                return todoTaskItem(context, listTask[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              itemCount: listTask.length + 1,
            ),
          );
  }

  AppBar totoAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Theme.of(context).colorScheme.onBackground,
          size: 32,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Theme.of(context).colorScheme.onBackground,
            size: 32,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}