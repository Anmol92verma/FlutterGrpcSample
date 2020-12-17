import 'package:grpc/grpc.dart';
import 'package:grpc_flutter/src/generated/lib/protos/AuthService.pbgrpc.dart';

class AuthRepository {
  final authService = AuthServiceClient(ClientChannel(
    '192.168.1.11',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  ));

  Future<SignupResponse> signupUser(SignupRequest signupRequest) async {
    return await authService.authorize(signupRequest,
        options: CallOptions(timeout: Duration(seconds: 15)));
  }
}
