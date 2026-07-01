import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../models/task.dart';
import '../services/database_service.dart';

class TaskProvider extends ChangeNotifier {
  final DatabaseService _databaseService = DatabaseService();

  List<Task> tasks = [];

  Future<void> loadTasks() async {
    final Database db = await _databaseService.database;

    final result = await db.query('tasks');

    tasks = result.map((e) => Task.fromMap(e)).toList();

    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    final Database db = await _databaseService.database;

    await db.insert('tasks', task.toMap());

    await loadTasks();
  }

  Future<void> deleteTask(int id) async {
    final Database db = await _databaseService.database;

    await db.delete('tasks', where: 'id=?', whereArgs: [id]);

    await loadTasks();
  }
}
