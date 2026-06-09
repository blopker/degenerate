// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `PUT /repos/{owner}/{repo}/pulls/{pull_number}/update-branch`.
sealed class PullsUpdateBranchError {const PullsUpdateBranchError();

/// Parse the variant matching the response status code.
factory PullsUpdateBranchError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => PullsUpdateBranchError403.parse(response),
  422 => PullsUpdateBranchError422.parse(response),
  _ => PullsUpdateBranchError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class PullsUpdateBranchError403 extends PullsUpdateBranchError {const PullsUpdateBranchError403(this.data);

factory PullsUpdateBranchError403.parse(ApiResponse response) { return PullsUpdateBranchError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateBranchError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsUpdateBranchError403($data)'; } 
 }
/// The `422` response.
@immutable final class PullsUpdateBranchError422 extends PullsUpdateBranchError {const PullsUpdateBranchError422(this.data);

factory PullsUpdateBranchError422.parse(ApiResponse response) { return PullsUpdateBranchError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateBranchError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsUpdateBranchError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsUpdateBranchError$Unknown extends PullsUpdateBranchError {const PullsUpdateBranchError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsUpdateBranchError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsUpdateBranchError.unknown($statusCode)'; } 
 }
