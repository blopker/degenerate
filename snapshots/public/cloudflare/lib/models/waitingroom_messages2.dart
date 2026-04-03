// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'waitingroom_messages2_source.dart';@immutable final class WaitingroomMessages2 {const WaitingroomMessages2({required this.code, required this.message, this.documentationUrl, this.source, });

factory WaitingroomMessages2.fromJson(Map<String, dynamic> json) { return WaitingroomMessages2(
  code: (json['code'] as num).toInt(),
  documentationUrl: json['documentation_url'] as String?,
  message: json['message'] as String,
  source: json['source'] != null ? WaitingroomMessages2Source.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

final int code;

final String? documentationUrl;

final String message;

final WaitingroomMessages2Source? source;

Map<String, dynamic> toJson() { return {
  'code': code,
  'documentation_url': ?documentationUrl,
  'message': message,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
WaitingroomMessages2 copyWith({int? code, String Function()? documentationUrl, String? message, WaitingroomMessages2Source Function()? source, }) { return WaitingroomMessages2(
  code: code ?? this.code,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
  message: message ?? this.message,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomMessages2 &&
          code == other.code &&
          documentationUrl == other.documentationUrl &&
          message == other.message &&
          source == other.source; } 
@override int get hashCode { return Object.hash(code, documentationUrl, message, source); } 
@override String toString() { return 'WaitingroomMessages2(code: $code, documentationUrl: $documentationUrl, message: $message, source: $source)'; } 
 }
