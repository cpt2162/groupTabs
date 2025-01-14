import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:config/config.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthRepo {
  final _controller = StreamController<AuthStatus>();
  String _sessionKey = '';

  Stream<AuthStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    var client = http.Client();
    final response = await client.post(
      Uri.parse('${Config.apiUrl}/user'),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final isAuthenticated = responseBody.containsKey('sessionKey');
      if (isAuthenticated) {
        _sessionKey = responseBody['sessionKey'];
        _controller.add(AuthStatus.authenticated);
      } else {
        _controller.add(AuthStatus.unauthenticated);
      }
    } else {
      _controller.add(AuthStatus.unauthenticated);
    }
    client.close();
  }

  String getSessionKey() => _sessionKey;

  void logOut() {
    _controller.add(AuthStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
