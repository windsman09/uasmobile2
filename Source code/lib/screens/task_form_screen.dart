import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/task_provider.dart';

class TaskFormScreen extends StatefulWidget {
  const TaskFormScreen({super.key});

  @override
  State<TaskFormScreen> createState() => _TaskFormScreenState();
}

class _TaskFormScreenState extends State<TaskFormScreen> {
  final titleController = TextEditingController();

  final descriptionController = TextEditingController();

  final deadlineController = TextEditingController();

  Future<void> saveTask() async {
    final task = Task(
      title: titleController.text,
      description: descriptionController.text,
      deadline: deadlineController.text,
    );

    await context.read<TaskProvider>().addTask(task);

    if (!mounted) return;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Task")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(labelText: "Judul"),
            ),

            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(labelText: "Deskripsi"),
            ),

            TextField(
              controller: deadlineController,
              decoration: const InputDecoration(labelText: "Deadline"),
            ),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: saveTask, child: const Text("Simpan")),
          ],
        ),
      ),
    );
  }
}
