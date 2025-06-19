import 'package:flutter/material.dart';

// singleton class
class MemberChangedNotifyer extends ChangeNotifier {
  static final MemberChangedNotifyer _instance =
      MemberChangedNotifyer._internal();
  factory MemberChangedNotifyer() {
    return _instance;
  }
  MemberChangedNotifyer._internal();

  void notifyMemberChange() {
    notifyListeners();
  }
}
