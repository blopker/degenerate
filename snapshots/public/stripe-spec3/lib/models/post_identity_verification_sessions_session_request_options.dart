// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_identity_verification_sessions_session_request_options_document.dart';/// A set of options for the session’s verification checks.
@immutable final class PostIdentityVerificationSessionsSessionRequestOptions {const PostIdentityVerificationSessionsSessionRequestOptions({this.document});

factory PostIdentityVerificationSessionsSessionRequestOptions.fromJson(Map<String, dynamic> json) { return PostIdentityVerificationSessionsSessionRequestOptions(
  document: json['document'] != null ? PostIdentityVerificationSessionsSessionRequestOptionsDocument.fromJson(json['document']) : null,
); }

final PostIdentityVerificationSessionsSessionRequestOptionsDocument? document;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'document'}.contains(key)); } 
PostIdentityVerificationSessionsSessionRequestOptions copyWith({PostIdentityVerificationSessionsSessionRequestOptionsDocument? Function()? document}) { return PostIdentityVerificationSessionsSessionRequestOptions(
  document: document != null ? document() : this.document,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIdentityVerificationSessionsSessionRequestOptions &&
          document == other.document; } 
@override int get hashCode { return document.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsSessionRequestOptions(document: $document)'; } 
 }
