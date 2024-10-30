import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  String? _token;
  String? _userId;

  bool get isAuthenticated => _isAuthenticated;
  String? get token => _token;
  String? get userId => _userId;

  Future<void> login(String email, String password) async {
    // Implement login logic
    _isAuthenticated = true;
    notifyListeners();
  }

  Future<void> signup(String email, String password) async {
    // Implement signup logic
    _isAuthenticated = true;
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _token = null;
    _userId = null;
    notifyListeners();
  }
}