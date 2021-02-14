///
//  Generated code. Do not modify.
//  source: fileservice/FileTransfer.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'FileTransfer.pb.dart' as $0;
export 'FileTransfer.pb.dart';

class FileTransferServiceClient extends $grpc.Client {
  static final _$uploadFile =
      $grpc.ClientMethod<$0.FileUploadType, $0.FileUploadResponseMessage>(
          '/FileTransferService/uploadFile',
          ($0.FileUploadType value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FileUploadResponseMessage.fromBuffer(value));
  static final _$downloadFile = $grpc.ClientMethod<
          $0.FileDownloadRequestMessage, $0.FileDownloadResponseMessage>(
      '/FileTransferService/downloadFile',
      ($0.FileDownloadRequestMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.FileDownloadResponseMessage.fromBuffer(value));

  FileTransferServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.FileUploadResponseMessage> uploadFile(
      $async.Stream<$0.FileUploadType> request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(_$uploadFile, request, options: options).single;
  }

  $grpc.ResponseStream<$0.FileDownloadResponseMessage> downloadFile(
      $0.FileDownloadRequestMessage request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$downloadFile, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class FileTransferServiceBase extends $grpc.Service {
  $core.String get $name => 'FileTransferService';

  FileTransferServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.FileUploadType, $0.FileUploadResponseMessage>(
            'uploadFile',
            uploadFile,
            true,
            false,
            ($core.List<$core.int> value) =>
                $0.FileUploadType.fromBuffer(value),
            ($0.FileUploadResponseMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileDownloadRequestMessage,
            $0.FileDownloadResponseMessage>(
        'downloadFile',
        downloadFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.FileDownloadRequestMessage.fromBuffer(value),
        ($0.FileDownloadResponseMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.FileDownloadResponseMessage> downloadFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FileDownloadRequestMessage> request) async* {
    yield* downloadFile(call, await request);
  }

  $async.Future<$0.FileUploadResponseMessage> uploadFile(
      $grpc.ServiceCall call, $async.Stream<$0.FileUploadType> request);
  $async.Stream<$0.FileDownloadResponseMessage> downloadFile(
      $grpc.ServiceCall call, $0.FileDownloadRequestMessage request);
}
