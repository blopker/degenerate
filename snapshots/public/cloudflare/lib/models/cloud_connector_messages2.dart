// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cloud_connector_messages2_source.dart';@immutable final class CloudConnectorMessages2 {const CloudConnectorMessages2({required this.code, required this.message, this.documentationUrl, this.source, });

factory CloudConnectorMessages2.fromJson(Map<String, dynamic> json) { return CloudConnectorMessages2(
  code: (json['code'] as num).toInt(),
  documentationUrl: json['documentation_url'] as String?,
  message: json['message'] as String,
  source: json['source'] != null ? CloudConnectorMessages2Source.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

final int code;

final String? documentationUrl;

final String message;

final CloudConnectorMessages2Source? source;

Map<String, dynamic> toJson() { return {
  'code': code,
  'documentation_url': ?documentationUrl,
  'message': message,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
CloudConnectorMessages2 copyWith({int? code, String Function()? documentationUrl, String? message, CloudConnectorMessages2Source Function()? source, }) { return CloudConnectorMessages2(
  code: code ?? this.code,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
  message: message ?? this.message,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CloudConnectorMessages2 &&
          code == other.code &&
          documentationUrl == other.documentationUrl &&
          message == other.message &&
          source == other.source; } 
@override int get hashCode { return Object.hash(code, documentationUrl, message, source); } 
@override String toString() { return 'CloudConnectorMessages2(code: $code, documentationUrl: $documentationUrl, message: $message, source: $source)'; } 
 }
