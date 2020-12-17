import 'package:grpc_flutter/src/base/BaseUseCase.dart';
import 'package:grpc_flutter/src/generated/lib/protos/AuthService.pb.dart';
import 'package:grpc_flutter/src/repository/AuthRepository.dart';

class SignupUseCase extends BaseUseCase<SignupRequest, SignupResponse> {
  AuthRepository authRepository;

  SignupUseCase(this.authRepository);

  @override
  Future<SignupResponse> perform(SignupRequest withData) async =>
      await authRepository.signupUser(withData);
}
