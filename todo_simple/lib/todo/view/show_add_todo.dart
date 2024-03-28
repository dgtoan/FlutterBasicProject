// showModalBottomSheet

import 'package:flutter/material.dart';

Future<void> showAddTodo(BuildContext context) async {
  await showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
    ),
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Create Task',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              contentPadding: EdgeInsets.all(16)
            ),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Description',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              contentPadding: EdgeInsets.all(16)
            ),
            minLines: 2,
            maxLines: 5,
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
              labelText: 'Deadline',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              contentPadding: EdgeInsets.all(16)
            ),
          ),
          const SizedBox(height: 16),
          MaterialButton(
            minWidth: double.maxFinite,
            height: 56,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
            child: Text(
              'Create',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          )
        ],
      ),
    ),
  );
}