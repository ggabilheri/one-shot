import 'package:flutter/foundation.dart';

abstract class IViewmodel extends ChangeNotifier {
  bool get isLoading;
  String? get error;
  void setLoading(bool loading);
  void setError(String? error);
  void clearError();
}

abstract class Viewmodel extends ChangeNotifier implements IViewmodel {
  bool _isLoading = false;
  String? _error;

  @override
  bool get isLoading => _isLoading;

  @override
  String? get error => _error;

  @override
  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  @override
  void setError(String? error) {
    _error = error;
    notifyListeners();
  }

  @override
  void clearError() {
    _error = null;
    notifyListeners();
  }
}
