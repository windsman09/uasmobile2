import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_provider.dart';
import 'task_form_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      context.read<TaskProvider>().loadTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<TaskProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager")),

      body: ListView.builder(
        itemCount: provider.tasks.length,

        itemBuilder: (context, index) {
          final task = provider.tasks[index];

          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              title: Text(task.title),

              subtitle: Text("${task.description}\n${task.deadline}"),

              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),

                onPressed: () {
                  provider.deleteTask(task.id!);
                },
              ),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const TaskFormScreen()),
          );
        },
      ),
    );
  }
}
