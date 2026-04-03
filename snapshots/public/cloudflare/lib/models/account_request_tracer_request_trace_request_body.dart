// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountRequestTracerRequestTraceRequestBody {const AccountRequestTracerRequestTraceRequestBody({this.base64, this.json, this.plainText, });

factory AccountRequestTracerRequestTraceRequestBody.fromJson(Map<String, dynamic> json) { return AccountRequestTracerRequestTraceRequestBody(
  base64: json['base64'] as String?,
  json: json['json'] as Map<String, dynamic>?,
  plainText: json['plain_text'] as String?,
); }

/// Base64 encoded request body
final String? base64;

/// Arbitrary json as request body
final Map<String,dynamic>? json;

/// Request body as plain text
final String? plainText;

Map<String, dynamic> toJson() { return {
  'base64': ?base64,
  'json': ?json,
  'plain_text': ?plainText,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'base64', 'json', 'plain_text'}.contains(key)); } 
AccountRequestTracerRequestTraceRequestBody copyWith({String Function()? base64, Map<String, dynamic> Function()? json, String Function()? plainText, }) { return AccountRequestTracerRequestTraceRequestBody(
  base64: base64 != null ? base64() : this.base64,
  json: json != null ? json() : this.json,
  plainText: plainText != null ? plainText() : this.plainText,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountRequestTracerRequestTraceRequestBody &&
          base64 == other.base64 &&
          json == other.json &&
          plainText == other.plainText; } 
@override int get hashCode { return Object.hash(base64, json, plainText); } 
@override String toString() { return 'AccountRequestTracerRequestTraceRequestBody(base64: $base64, json: $json, plainText: $plainText)'; } 
 }
