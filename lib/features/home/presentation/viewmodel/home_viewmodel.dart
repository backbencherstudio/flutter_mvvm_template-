import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  String welcomeMessage = "Welcome to Home!";

  void updateMessage(String newMessage) {
    welcomeMessage = newMessage;
    notifyListeners();
  }
}
