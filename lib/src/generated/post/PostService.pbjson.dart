///
//  Generated code. Do not modify.
//  source: post/PostService.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use postRequestDescriptor instead')
const PostRequest$json = const {
  '1': 'PostRequest',
  '2': const [
    const {'1': 'caption', '3': 1, '4': 1, '5': 9, '10': 'caption'},
    const {'1': 'fileData', '3': 2, '4': 1, '5': 12, '10': 'fileData'},
    const {'1': 'mimeType', '3': 3, '4': 1, '5': 9, '10': 'mimeType'},
  ],
};

/// Descriptor for `PostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postRequestDescriptor = $convert.base64Decode('CgtQb3N0UmVxdWVzdBIYCgdjYXB0aW9uGAEgASgJUgdjYXB0aW9uEhoKCGZpbGVEYXRhGAIgASgMUghmaWxlRGF0YRIaCghtaW1lVHlwZRgDIAEoCVIIbWltZVR5cGU=');
@$core.Deprecated('Use postResponseDescriptor instead')
const PostResponse$json = const {
  '1': 'PostResponse',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postResponseDescriptor = $convert.base64Decode('CgxQb3N0UmVzcG9uc2USEgoEY29kZRgBIAEoBVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
