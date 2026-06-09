// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_get_commit_response503.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/commits/{ref}`.
sealed class ReposGetCommitError {const ReposGetCommitError();

/// Parse the variant matching the response status code.
factory ReposGetCommitError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposGetCommitError404.parse(response),
  409 => ReposGetCommitError409.parse(response),
  422 => ReposGetCommitError422.parse(response),
  500 => ReposGetCommitError500.parse(response),
  503 => ReposGetCommitError503.parse(response),
  _ => ReposGetCommitError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposGetCommitError404 extends ReposGetCommitError {const ReposGetCommitError404(this.data);

factory ReposGetCommitError404.parse(ApiResponse response) { return ReposGetCommitError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposGetCommitError409 extends ReposGetCommitError {const ReposGetCommitError409(this.data);

factory ReposGetCommitError409.parse(ApiResponse response) { return ReposGetCommitError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposGetCommitError422 extends ReposGetCommitError {const ReposGetCommitError422(this.data);

factory ReposGetCommitError422.parse(ApiResponse response) { return ReposGetCommitError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitError422($data)'; } 
 }
/// The `500` response.
@immutable final class ReposGetCommitError500 extends ReposGetCommitError {const ReposGetCommitError500(this.data);

factory ReposGetCommitError500.parse(ApiResponse response) { return ReposGetCommitError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitError500($data)'; } 
 }
/// The `503` response.
@immutable final class ReposGetCommitError503 extends ReposGetCommitError {const ReposGetCommitError503(this.data);

factory ReposGetCommitError503.parse(ApiResponse response) { return ReposGetCommitError503(ReposGetCommitResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ReposGetCommitResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetCommitError$Unknown extends ReposGetCommitError {const ReposGetCommitError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetCommitError.unknown($statusCode)'; } 
 }
