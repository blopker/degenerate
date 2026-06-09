// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_list_files_response503.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/pulls/{pull_number}/files`.
sealed class PullsListFilesError {const PullsListFilesError();

/// Parse the variant matching the response status code.
factory PullsListFilesError.parse(ApiResponse response) { return switch (response.statusCode) {
  422 => PullsListFilesError422.parse(response),
  500 => PullsListFilesError500.parse(response),
  503 => PullsListFilesError503.parse(response),
  _ => PullsListFilesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `422` response.
@immutable final class PullsListFilesError422 extends PullsListFilesError {const PullsListFilesError422(this.data);

factory PullsListFilesError422.parse(ApiResponse response) { return PullsListFilesError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListFilesError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsListFilesError422($data)'; } 
 }
/// The `500` response.
@immutable final class PullsListFilesError500 extends PullsListFilesError {const PullsListFilesError500(this.data);

factory PullsListFilesError500.parse(ApiResponse response) { return PullsListFilesError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListFilesError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsListFilesError500($data)'; } 
 }
/// The `503` response.
@immutable final class PullsListFilesError503 extends PullsListFilesError {const PullsListFilesError503(this.data);

factory PullsListFilesError503.parse(ApiResponse response) { return PullsListFilesError503(PullsListFilesResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PullsListFilesResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListFilesError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsListFilesError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsListFilesError$Unknown extends PullsListFilesError {const PullsListFilesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsListFilesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsListFilesError.unknown($statusCode)'; } 
 }
