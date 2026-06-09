// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'repos_delete_file_response503.dart';import 'validation_error.dart';/// Error responses of `DELETE /repos/{owner}/{repo}/contents/{path}`.
sealed class ReposDeleteFileError {const ReposDeleteFileError();

/// Parse the variant matching the response status code.
factory ReposDeleteFileError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => ReposDeleteFileError404.parse(response),
  409 => ReposDeleteFileError409.parse(response),
  422 => ReposDeleteFileError422.parse(response),
  503 => ReposDeleteFileError503.parse(response),
  _ => ReposDeleteFileError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class ReposDeleteFileError404 extends ReposDeleteFileError {const ReposDeleteFileError404(this.data);

factory ReposDeleteFileError404.parse(ApiResponse response) { return ReposDeleteFileError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteFileError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteFileError404($data)'; } 
 }
/// The `409` response.
@immutable final class ReposDeleteFileError409 extends ReposDeleteFileError {const ReposDeleteFileError409(this.data);

factory ReposDeleteFileError409.parse(ApiResponse response) { return ReposDeleteFileError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteFileError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteFileError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposDeleteFileError422 extends ReposDeleteFileError {const ReposDeleteFileError422(this.data);

factory ReposDeleteFileError422.parse(ApiResponse response) { return ReposDeleteFileError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteFileError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteFileError422($data)'; } 
 }
/// The `503` response.
@immutable final class ReposDeleteFileError503 extends ReposDeleteFileError {const ReposDeleteFileError503(this.data);

factory ReposDeleteFileError503.parse(ApiResponse response) { return ReposDeleteFileError503(ReposDeleteFileResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ReposDeleteFileResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteFileError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposDeleteFileError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposDeleteFileError$Unknown extends ReposDeleteFileError {const ReposDeleteFileError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposDeleteFileError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposDeleteFileError.unknown($statusCode)'; } 
 }
