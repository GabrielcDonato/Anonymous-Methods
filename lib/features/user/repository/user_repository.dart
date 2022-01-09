import 'package:anonymous_methods/core/core.dart';
import 'package:anonymous_methods/features/user/model/user.dart';

abstract class IUserRepository {
  Future<User> doLogin();
}

class UserRepository implements IUserRepository {
  @override
  Future<User> doLogin() async {
    try {
      final response = await Future.delayed(
          Duration(seconds: 1),
          () => {
                'name': 'Gabriel Donato',
                'picture': '',
                'bornDate': DateTime(2003, 04, 20).microsecondsSinceEpoch,
                'status': Status.active.toString(),
              });
      return User.fromMap(response);
    } catch (e) {
      throw LoginFailure(message: 'Não foi possível realizar login');
    }
  }
}
