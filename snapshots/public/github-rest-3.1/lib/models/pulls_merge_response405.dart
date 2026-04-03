// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullsMergeResponse405 {const PullsMergeResponse405({this.message, this.documentationUrl, });

factory PullsMergeResponse405.fromJson(Map<String, dynamic> json) { return PullsMergeResponse405(
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
); }

final String? message;

final String? documentationUrl;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'documentation_url': ?documentationUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'documentation_url'}.contains(key)); } 
PullsMergeResponse405 copyWith({String Function()? message, String Function()? documentationUrl, }) { return PullsMergeResponse405(
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsMergeResponse405 &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(message, documentationUrl); } 
@override String toString() { return 'PullsMergeResponse405(message: $message, documentationUrl: $documentationUrl)'; } 
 }
