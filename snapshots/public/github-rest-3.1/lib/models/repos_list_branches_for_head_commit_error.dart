// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'validation_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/commits/{commit_sha}/branches-where-head`.
sealed class ReposListBranchesForHeadCommitError {const ReposListBranchesForHeadCommitError();

/// Parse the variant matching the response status code.
factory ReposListBranchesForHeadCommitError.parse(ApiResponse response) { return switch (response.statusCode) {
  409 => ReposListBranchesForHeadCommitError409.parse(response),
  422 => ReposListBranchesForHeadCommitError422.parse(response),
  _ => ReposListBranchesForHeadCommitError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `409` response.
@immutable final class ReposListBranchesForHeadCommitError409 extends ReposListBranchesForHeadCommitError {const ReposListBranchesForHeadCommitError409(this.data);

factory ReposListBranchesForHeadCommitError409.parse(ApiResponse response) { return ReposListBranchesForHeadCommitError409(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListBranchesForHeadCommitError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListBranchesForHeadCommitError409($data)'; } 
 }
/// The `422` response.
@immutable final class ReposListBranchesForHeadCommitError422 extends ReposListBranchesForHeadCommitError {const ReposListBranchesForHeadCommitError422(this.data);

factory ReposListBranchesForHeadCommitError422.parse(ApiResponse response) { return ReposListBranchesForHeadCommitError422(ValidationError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ValidationError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListBranchesForHeadCommitError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListBranchesForHeadCommitError422($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListBranchesForHeadCommitError$Unknown extends ReposListBranchesForHeadCommitError {const ReposListBranchesForHeadCommitError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListBranchesForHeadCommitError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListBranchesForHeadCommitError.unknown($statusCode)'; } 
 }
