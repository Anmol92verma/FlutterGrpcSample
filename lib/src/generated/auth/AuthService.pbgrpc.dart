///
//  Generated code. Do not modify.
//  source: auth/AuthService.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AuthService.pb.dart' as $0;
export 'AuthService.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$authorize =
      $grpc.ClientMethod<$0.AuthRequest, $0.AuthResponse>(
          '/AuthService/authorize',
          ($0.AuthRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));
  static final _$verifyOtp = $grpc.ClientMethod<$0.AuthVerify, $0.AuthResponse>(
      '/AuthService/verifyOtp',
      ($0.AuthVerify value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AuthResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthResponse> authorize($0.AuthRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$authorize, request, options: options);
  }

  $grpc.ResponseFuture<$0.AuthResponse> verifyOtp($0.AuthVerify request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$verifyOtp, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AuthRequest, $0.AuthResponse>(
        'authorize',
        authorize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthRequest.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AuthVerify, $0.AuthResponse>(
        'verifyOtp',
        verifyOtp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AuthVerify.fromBuffer(value),
        ($0.AuthResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthResponse> authorize_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthRequest> request) async {
    return authorize(call, await request);
  }

  $async.Future<$0.AuthResponse> verifyOtp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AuthVerify> request) async {
    return verifyOtp(call, await request);
  }

  $async.Future<$0.AuthResponse> authorize(
      $grpc.ServiceCall call, $0.AuthRequest request);
  $async.Future<$0.AuthResponse> verifyOtp(
      $grpc.ServiceCall call, $0.AuthVerify request);
}
