import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class AuthProvider extends ChangeNotifier {
  final AuthService _service = AuthService();

  Future<void> login(String email, String password) async {
    await _service.login(email, password);
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    await _service.register(email, password);
    notifyListeners();
  }

  Future<void> logout() async {
    await _service.logout();
    notifyListeners();
  }
}
