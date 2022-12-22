part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// Class Initial Authentication
class AuthInitial extends AuthState {}
// 