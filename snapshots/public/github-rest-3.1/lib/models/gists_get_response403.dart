// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'gists_get_response403_block.dart';@immutable final class GistsGetResponse403 {const GistsGetResponse403({this.block, this.message, this.documentationUrl, });

factory GistsGetResponse403.fromJson(Map<String, dynamic> json) { return GistsGetResponse403(
  block: json['block'] != null ? GistsGetResponse403Block.fromJson(json['block'] as Map<String, dynamic>) : null,
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
); }

final GistsGetResponse403Block? block;

final String? message;

final String? documentationUrl;

Map<String, dynamic> toJson() { return {
  if (block != null) 'block': block?.toJson(),
  'message': ?message,
  'documentation_url': ?documentationUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'block', 'message', 'documentation_url'}.contains(key)); } 
GistsGetResponse403 copyWith({GistsGetResponse403Block Function()? block, String Function()? message, String Function()? documentationUrl, }) { return GistsGetResponse403(
  block: block != null ? block() : this.block,
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsGetResponse403 &&
          block == other.block &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(block, message, documentationUrl); } 
@override String toString() { return 'GistsGetResponse403(block: $block, message: $message, documentationUrl: $documentationUrl)'; } 
 }
