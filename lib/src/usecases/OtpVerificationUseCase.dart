import 'package:grpc_flutter/protos/auth/AuthService.pb.dart';
import 'package:grpc_flutter/src/base/BaseUseCase.dart';
import 'package:grpc_flutter/src/repository/AuthRepository.dart';

class OtpVerificationUseCode extends BaseUseCase<AuthVerify, AuthResponse> {
  AuthRepository authRepository;

  OtpVerificationUseCode(this.authRepository);

  @override
  Future<AuthResponse> perform(AuthVerify withData) async =>
      await authRepository.authVerify(withData);
}
