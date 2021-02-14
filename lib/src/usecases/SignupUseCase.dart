import 'package:grpc_flutter/src/base/BaseUseCase.dart';
import 'package:grpc_flutter/src/generated/auth/AuthService.pb.dart';
import 'package:grpc_flutter/src/repository/AuthRepository.dart';

class SignupUseCase extends BaseUseCase<AuthRequest, AuthResponse> {
  AuthRepository authRepository;

  SignupUseCase(this.authRepository);

  @override
  Future<AuthResponse> perform(AuthRequest withData) async =>
      await authRepository.signupUser(withData);
}
