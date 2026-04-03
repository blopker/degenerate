// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secondary_dns_messages2_source.dart';@immutable final class SecondaryDnsMessages2 {const SecondaryDnsMessages2({required this.code, required this.message, this.documentationUrl, this.source, });

factory SecondaryDnsMessages2.fromJson(Map<String, dynamic> json) { return SecondaryDnsMessages2(
  code: (json['code'] as num).toInt(),
  documentationUrl: json['documentation_url'] as String?,
  message: json['message'] as String,
  source: json['source'] != null ? SecondaryDnsMessages2Source.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

final int code;

final String? documentationUrl;

final String message;

final SecondaryDnsMessages2Source? source;

Map<String, dynamic> toJson() { return {
  'code': code,
  'documentation_url': ?documentationUrl,
  'message': message,
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('code') && json['code'] is num &&
      json.containsKey('message') && json['message'] is String; } 
SecondaryDnsMessages2 copyWith({int? code, String Function()? documentationUrl, String? message, SecondaryDnsMessages2Source Function()? source, }) { return SecondaryDnsMessages2(
  code: code ?? this.code,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
  message: message ?? this.message,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecondaryDnsMessages2 &&
          code == other.code &&
          documentationUrl == other.documentationUrl &&
          message == other.message &&
          source == other.source; } 
@override int get hashCode { return Object.hash(code, documentationUrl, message, source); } 
@override String toString() { return 'SecondaryDnsMessages2(code: $code, documentationUrl: $documentationUrl, message: $message, source: $source)'; } 
 }
