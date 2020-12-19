import 'package:grpc/grpc.dart';
import 'package:grpc_flutter/protos/auth/AuthService.pb.dart';
import 'package:grpc_flutter/protos/auth/AuthService.pbgrpc.dart';

class AuthRepository {

  static final AuthRepository _authRepository = AuthRepository._internal();

  factory AuthRepository() {
    return _authRepository;
  }

  AuthRepository._internal();
  
  
  final authService = AuthServiceClient(ClientChannel(
    '192.168.1.15',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  ));

  Future<AuthResponse> signupUser(AuthRequest signupRequest) async {
    return await authService.authorize(signupRequest,
        options: CallOptions(timeout: Duration(seconds: 15)));
  }

  Future<AuthResponse> authVerify(AuthVerify signupRequest) async {
    return await authService.verifyOtp(signupRequest,
        options: CallOptions(timeout: Duration(seconds: 15)));
  }


}
