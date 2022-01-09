import 'package:anonymous_methods/core/core.dart';
import 'package:anonymous_methods/features/user/model/user.dart';
import 'package:anonymous_methods/features/user/repository/user_repository.dart';
import 'package:flutter/widgets.dart';

class LoginController extends ChangeNotifier {
  LoginController(this.repository, this.onError);

  final IUserRepository repository;

  LoginFailure? _error;

  bool _isLoading = false;

  User? _user;

  LoginFailure? get error => _error;

  bool get hasError => _error != null;

  bool get isLoading => _isLoading;

  User? get user => _user;

  final Function(String message) onError;

  setIsLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> doLogin() async {
    try {
      _error = null;
      setIsLoading(true);
      _user = await repository.doLogin();
    } on LoginFailure catch (e) {
      _error = e;
      onError(e.message!);
    } finally {
      setIsLoading(false);
    }
  }
}
