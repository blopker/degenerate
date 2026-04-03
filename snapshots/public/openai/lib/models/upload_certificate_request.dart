// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UploadCertificateRequest {const UploadCertificateRequest({required this.content, this.name, });

factory UploadCertificateRequest.fromJson(Map<String, dynamic> json) { return UploadCertificateRequest(
  name: json['name'] as String?,
  content: json['content'] as String,
); }

/// An optional name for the certificate
final String? name;

/// The certificate content in PEM format
final String content;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'content': content,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('content') && json['content'] is String; } 
UploadCertificateRequest copyWith({String Function()? name, String? content, }) { return UploadCertificateRequest(
  name: name != null ? name() : this.name,
  content: content ?? this.content,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UploadCertificateRequest &&
          name == other.name &&
          content == other.content; } 
@override int get hashCode { return Object.hash(name, content); } 
@override String toString() { return 'UploadCertificateRequest(name: $name, content: $content)'; } 
 }
