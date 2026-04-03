// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Basic Error
@immutable final class BasicError {const BasicError({this.message, this.documentationUrl, this.url, this.status, });

factory BasicError.fromJson(Map<String, dynamic> json) { return BasicError(
  message: json['message'] as String?,
  documentationUrl: json['documentation_url'] as String?,
  url: json['url'] as String?,
  status: json['status'] as String?,
); }

final String? message;

final String? documentationUrl;

final String? url;

final String? status;

Map<String, dynamic> toJson() { return {
  'message': ?message,
  'documentation_url': ?documentationUrl,
  'url': ?url,
  'status': ?status,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message', 'documentation_url', 'url', 'status'}.contains(key)); } 
BasicError copyWith({String Function()? message, String Function()? documentationUrl, String Function()? url, String Function()? status, }) { return BasicError(
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
  url: url != null ? url() : this.url,
  status: status != null ? status() : this.status,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BasicError &&
          message == other.message &&
          documentationUrl == other.documentationUrl &&
          url == other.url &&
          status == other.status; } 
@override int get hashCode { return Object.hash(message, documentationUrl, url, status); } 
@override String toString() { return 'BasicError(message: $message, documentationUrl: $documentationUrl, url: $url, status: $status)'; } 
 }
