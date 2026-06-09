// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `POST /repos/{owner}/{repo}/commits/{commit_sha}/comments`.
sealed class ReposCreateCommitCommentError {const ReposCreateCommitCommentError();

/// Parse the variant matching the response status code.
factory ReposCreateCommitCommentError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ReposCreateCommitCommentError403.parse(response),
  422 => ReposCreateCommitCommentError422.parse(response),
  _ => ReposCreateCommitCommentError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ReposCreateCommitCommentError403 extends ReposCreateCommitCommentError {const ReposCreateCommitCommentError403(this.data);

factory ReposCreateCommitCommentError403.parse(ApiResponse response) { return ReposCreateCommitCommentError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateCommitCommentError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateCommitCommentError403($data)'; } 
 }
/// The `422` response.
@immutable final class ReposCreateCommitCommentError422 extends ReposCreateCommitCommentError {const ReposCreateCommitCommentError422(this.data);

factory ReposCreateCommitCommentError422.parse(ApiResponse response) { return ReposCreateCommitCommentError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateCommitCommentError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposCreateCommitCommentError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposCreateCommitCommentError$Unknown extends ReposCreateCommitCommentError {const ReposCreateCommitCommentError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposCreateCommitCommentError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposCreateCommitCommentError.unknown($statusCode)'; } 
 }
