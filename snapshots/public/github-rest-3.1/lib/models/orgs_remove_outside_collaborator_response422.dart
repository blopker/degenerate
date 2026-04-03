// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class OrgsRemoveOutsideCollaboratorResponse422 {const OrgsRemoveOutsideCollaboratorResponse422({this.message, this.documentationUrl, });

factory OrgsRemoveOutsideCollaboratorResponse422.fromJson(Map<String, dynamic> json) { return OrgsRemoveOutsideCollaboratorResponse422(
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
OrgsRemoveOutsideCollaboratorResponse422 copyWith({String Function()? message, String Function()? documentationUrl, }) { return OrgsRemoveOutsideCollaboratorResponse422(
  message: message != null ? message() : this.message,
  documentationUrl: documentationUrl != null ? documentationUrl() : this.documentationUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrgsRemoveOutsideCollaboratorResponse422 &&
          message == other.message &&
          documentationUrl == other.documentationUrl; } 
@override int get hashCode { return Object.hash(message, documentationUrl); } 
@override String toString() { return 'OrgsRemoveOutsideCollaboratorResponse422(message: $message, documentationUrl: $documentationUrl)'; } 
 }
