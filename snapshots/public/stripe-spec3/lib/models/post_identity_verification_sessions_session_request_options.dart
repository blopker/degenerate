// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'document_options2.dart';import 'post_identity_verification_sessions_session_request_options_document.dart';/// A set of options for the session’s verification checks.
final class PostIdentityVerificationSessionsSessionRequestOptions {const PostIdentityVerificationSessionsSessionRequestOptions({this.document});

factory PostIdentityVerificationSessionsSessionRequestOptions.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsSessionRequestOptions(
  document: json['document'] != null ? OneOf2.parse(json['document'], fromA: (v) => DocumentOptions2.fromJson(v as Map<String, dynamic>), fromB: (v) => PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.fromJson(v as String),) : null,
); }

final PostIdentityVerificationSessionsSessionRequestOptionsDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostIdentityVerificationSessionsSessionRequestOptions copyWith({PostIdentityVerificationSessionsSessionRequestOptionsDocument Function()? document}) { return PostIdentityVerificationSessionsSessionRequestOptions(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsSessionRequestOptions &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsSessionRequestOptions(document: $document)'; } 
 }
