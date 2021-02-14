///
//  Generated code. Do not modify.
//  source: post/PostService.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'PostService.pb.dart' as $0;
export 'PostService.pb.dart';

class PostServiceClient extends $grpc.Client {
  static final _$submitPost =
      $grpc.ClientMethod<$0.PostRequest, $0.PostResponse>(
          '/PostService/submitPost',
          ($0.PostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PostResponse.fromBuffer(value));

  PostServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.PostResponse> submitPost($0.PostRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$submitPost, request, options: options);
  }
}

abstract class PostServiceBase extends $grpc.Service {
  $core.String get $name => 'PostService';

  PostServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PostRequest, $0.PostResponse>(
        'submitPost',
        submitPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PostRequest.fromBuffer(value),
        ($0.PostResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.PostResponse> submitPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PostRequest> request) async {
    return submitPost(call, await request);
  }

  $async.Future<$0.PostResponse> submitPost(
      $grpc.ServiceCall call, $0.PostRequest request);
}
