///
//  Generated code. Do not modify.
//  source: lib/protos/AuthService.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'AuthService.pb.dart' as $0;
export 'AuthService.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$authorize =
      $grpc.ClientMethod<$0.SignupRequest, $0.SignupResponse>(
          '/AuthService/authorize',
          ($0.SignupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SignupResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignupResponse> authorize($0.SignupRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$authorize, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignupRequest, $0.SignupResponse>(
        'authorize',
        authorize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupRequest.fromBuffer(value),
        ($0.SignupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignupResponse> authorize_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignupRequest> request) async {
    return authorize(call, await request);
  }

  $async.Future<$0.SignupResponse> authorize(
      $grpc.ServiceCall call, $0.SignupRequest request);
}
