///
//  Generated code. Do not modify.
//  source: fileservice/FileTransfer.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class FileUploadType extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileUploadType', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName', protoName: 'fileName')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileData', $pb.PbFieldType.OY, protoName: 'fileData')
    ..hasRequiredFields = false
  ;

  FileUploadType._() : super();
  factory FileUploadType({
    $core.String fileName,
    $core.List<$core.int> fileData,
  }) {
    final _result = create();
    if (fileName != null) {
      _result.fileName = fileName;
    }
    if (fileData != null) {
      _result.fileData = fileData;
    }
    return _result;
  }
  factory FileUploadType.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileUploadType.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileUploadType clone() => FileUploadType()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileUploadType copyWith(void Function(FileUploadType) updates) => super.copyWith((message) => updates(message as FileUploadType)) as FileUploadType; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileUploadType create() => FileUploadType._();
  FileUploadType createEmptyInstance() => create();
  static $pb.PbList<FileUploadType> createRepeated() => $pb.PbList<FileUploadType>();
  @$core.pragma('dart2js:noInline')
  static FileUploadType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileUploadType>(create);
  static FileUploadType _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fileData => $_getN(1);
  @$pb.TagNumber(2)
  set fileData($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileData() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileData() => clearField(2);
}

class FileUploadResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileUploadResponseMessage', createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  FileUploadResponseMessage._() : super();
  factory FileUploadResponseMessage({
    $core.bool success,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory FileUploadResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileUploadResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileUploadResponseMessage clone() => FileUploadResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileUploadResponseMessage copyWith(void Function(FileUploadResponseMessage) updates) => super.copyWith((message) => updates(message as FileUploadResponseMessage)) as FileUploadResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileUploadResponseMessage create() => FileUploadResponseMessage._();
  FileUploadResponseMessage createEmptyInstance() => create();
  static $pb.PbList<FileUploadResponseMessage> createRepeated() => $pb.PbList<FileUploadResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static FileUploadResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileUploadResponseMessage>(create);
  static FileUploadResponseMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class FileDownloadRequestMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileDownloadRequestMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileName', protoName: 'fileName')
    ..hasRequiredFields = false
  ;

  FileDownloadRequestMessage._() : super();
  factory FileDownloadRequestMessage({
    $core.String fileName,
  }) {
    final _result = create();
    if (fileName != null) {
      _result.fileName = fileName;
    }
    return _result;
  }
  factory FileDownloadRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileDownloadRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileDownloadRequestMessage clone() => FileDownloadRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileDownloadRequestMessage copyWith(void Function(FileDownloadRequestMessage) updates) => super.copyWith((message) => updates(message as FileDownloadRequestMessage)) as FileDownloadRequestMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileDownloadRequestMessage create() => FileDownloadRequestMessage._();
  FileDownloadRequestMessage createEmptyInstance() => create();
  static $pb.PbList<FileDownloadRequestMessage> createRepeated() => $pb.PbList<FileDownloadRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static FileDownloadRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileDownloadRequestMessage>(create);
  static FileDownloadRequestMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);
}

class FileDownloadResponseMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileDownloadResponseMessage', createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileData', $pb.PbFieldType.OY, protoName: 'fileData')
    ..hasRequiredFields = false
  ;

  FileDownloadResponseMessage._() : super();
  factory FileDownloadResponseMessage({
    $core.List<$core.int> fileData,
  }) {
    final _result = create();
    if (fileData != null) {
      _result.fileData = fileData;
    }
    return _result;
  }
  factory FileDownloadResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileDownloadResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileDownloadResponseMessage clone() => FileDownloadResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileDownloadResponseMessage copyWith(void Function(FileDownloadResponseMessage) updates) => super.copyWith((message) => updates(message as FileDownloadResponseMessage)) as FileDownloadResponseMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileDownloadResponseMessage create() => FileDownloadResponseMessage._();
  FileDownloadResponseMessage createEmptyInstance() => create();
  static $pb.PbList<FileDownloadResponseMessage> createRepeated() => $pb.PbList<FileDownloadResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static FileDownloadResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileDownloadResponseMessage>(create);
  static FileDownloadResponseMessage _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fileData => $_getN(0);
  @$pb.TagNumber(1)
  set fileData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileData() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileData() => clearField(1);
}

