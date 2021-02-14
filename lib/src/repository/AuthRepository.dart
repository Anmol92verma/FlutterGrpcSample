import 'package:grpc/grpc.dart';
import 'dart:convert' show utf8;
import 'package:grpc_flutter/src/generated/auth/AuthService.pbgrpc.dart';

class AuthRepository {
  static final AuthRepository _authRepository = AuthRepository._internal();
  static const HOST = "192.168.1.15";
  static const PORT = 8443;
  static const String authority = "$HOST:$PORT";

  factory AuthRepository() {
    return _authRepository;
  }

  AuthServiceClient authService;

  AuthRepository._internal() {
    init();
  }

  void init() async {
    authService = AuthServiceClient(await makeChannel());
    print(authService);
  }

  Future<ClientChannel> makeChannel() async {
    return ClientChannel(
      HOST,
      port: PORT
    );
  }

  ChannelCredentials channelCredentials(String caCert) {
    return ChannelCredentials.secure(
        authority: authority,
        certificates: utf8.encode(caCert),
        onBadCertificate: (certificate, host) {
          print(certificate.endValidity);
          print(host);
          return false;
        });
  }

  Future<AuthResponse> signupUser(AuthRequest signupRequest) async {
    return await authService.authorize(signupRequest,
        options: CallOptions(timeout: Duration(seconds: 15)));
  }

  Future<AuthResponse> authVerify(AuthVerify signupRequest) async {
    return await authService.verifyOtp(signupRequest,
        options: CallOptions(timeout: Duration(seconds: 15)));
  }
}
