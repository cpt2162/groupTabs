part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthStatus.unknown,
    this.user = User.empty,
    this.sessionKey = '',
  });

  const AuthState.unknown() : this._();

  const AuthState.authenticated(User user, String sessionKey)
      : this._(
            status: AuthStatus.authenticated,
            user: user,
            sessionKey: sessionKey);

  const AuthState.unauthenticated()
      : this._(status: AuthStatus.unauthenticated);

  final AuthStatus status;
  final User user;
  final String sessionKey;

  @override
  List<Object> get props => [status, user, sessionKey];
}
