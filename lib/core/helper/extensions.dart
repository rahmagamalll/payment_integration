import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  /// Method to push a new route onto the stack
  Future<T?> push<T>(Widget page) {
    return Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Method to replace the current route with a new route
  Future<T?> pushReplacement<T, TO>(Widget page) {
    return Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Method to push a new route and remove all the previous routes
  Future<T?> pushAndRemoveUntil<T>(
      Widget page, bool Function(Route<dynamic>) predicate) {
    return Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      predicate,
    );
  }

  /// Method to push a named route
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) {
    return Navigator.pushNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  /// Method to replace the current route with a named route
  Future<T?> pushReplacementNamed<T, TO>(String routeName,
      {Object? arguments}) {
    return Navigator.pushReplacementNamed(
      this,
      routeName,
      arguments: arguments,
    );
  }

  // Method to push a named route and remove all the previous routes
  Future<T?> pushNamedAndRemoveUntil<T>(
      String newRouteName, bool Function(Route<dynamic>) predicate,
      {Object? arguments}) {
    return Navigator.pushNamedAndRemoveUntil(
      this,
      newRouteName,
      predicate,
      arguments: arguments,
    );
  }

  // Method to pop the current route off the stack
  void pop<T>([T? result]) {
    Navigator.pop(this, result);
  }

  // Method to pop until a certain route
  void popUntil(bool Function(Route<dynamic>) predicate) {
    Navigator.popUntil(this, predicate);
  }

  // Method to pop to the first route
  void popToFirst() {
    Navigator.popUntil(this, (route) => route.isFirst);
  }

  // Method to check if the Navigator can pop
  bool canPop() {
    return Navigator.canPop(this);
  }
}

/// Extension to check if an object is null or empty
extension IsNullOrEmptyExtension on Object? {
  bool isNullOrEmpty() {
    if (this == null) {
      return true;
    }
    if (this is Iterable) {
      return (this as Iterable).isEmpty;
    }
    if (this is Map) {
      return (this as Map).isEmpty;
    }
    if (this is String) {
      return (this as String).isEmpty;
    }
    return false; // For non-nullable objects that are not lists, maps, or strings
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(this);
  }
}
