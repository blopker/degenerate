// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'document_options.dart';import 'post_identity_verification_sessions_request_options_document.dart';/// A set of options for the session’s verification checks.
final class PostIdentityVerificationSessionsRequestOptions {const PostIdentityVerificationSessionsRequestOptions({this.document});

factory PostIdentityVerificationSessionsRequestOptions.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsRequestOptions(
  document: json['document'] != null ? OneOf2.parse(json['document'], fromA: (v) => DocumentOptions.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIdentityVerificationSessionsRequestOptionsDocumentVariant2.fromJson(v as String),) : null,
); }

final PostIdentityVerificationSessionsRequestOptionsDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostIdentityVerificationSessionsRequestOptions copyWith({PostIdentityVerificationSessionsRequestOptionsDocument Function()? document}) { return PostIdentityVerificationSessionsRequestOptions(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsRequestOptions &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsRequestOptions(document: $document)'; } 
 }
