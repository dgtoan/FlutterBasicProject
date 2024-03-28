import 'package:flutter/material.dart';

Container todoTaskItem(BuildContext context, Map<String, dynamic> task) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(
          task['completed'] ? Icons.done_all : Icons.radio_button_unchecked,
          color: Theme.of(context).colorScheme.primary,
          size: 32,
        ),
        title: Text(
          task['title'],
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontWeight: FontWeight.bold,
            decoration: task['completed'] ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        subtitle: Text(
          task['completed'] ? 'Completed' : 'Deadline: ${task['deadline']}',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Colors.grey[500],
          ),
        ),
      ),
    ),
  );
}