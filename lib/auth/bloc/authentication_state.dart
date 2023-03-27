part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();

  @override
  List<Object?> get props => [];
}

class InitialAuthenticationState extends AuthenticationState {}

class LoadingAUthenticationState extends AuthenticationState {}

class SuccessAuthenticationstate extends AuthenticationState {
  final User user;

  const SuccessAuthenticationstate(this.user);

  @override
  List<Object?> get props => [user];
}

class AuthenticationErrorState extends AuthenticationState {
  final String errorMessage;

  const AuthenticationErrorState(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class OTPReceived extends AuthenticationState {
  final String verificationId;
  final int? resendToken;

  const OTPReceived(this.verificationId, this.resendToken);

  @override
  List<Object?> get props => [verificationId, resendToken];

  @override
  String toString() =>
      'OTP Received: { verificationId: $verificationId, resendToken: $resendToken }';

  AuthenticationState copyWith({String? verificationId, int? resendToken}) {
    return OTPReceived(
      verificationId ?? this.verificationId,
      resendToken ?? this.resendToken,
    );
  }
}
