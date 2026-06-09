// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'commit.dart';/// Success responses of `POST /repos/{owner}/{repo}/merges`.
sealed class ReposMergeSuccess {const ReposMergeSuccess();

/// Parse the variant matching the response status code.
factory ReposMergeSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  201 => ReposMergeSuccess201.parse(response),
  204 => ReposMergeSuccess204.parse(response),
  _ => ReposMergeSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `201` response.
@immutable final class ReposMergeSuccess201 extends ReposMergeSuccess {const ReposMergeSuccess201(this.data);

factory ReposMergeSuccess201.parse(ApiResponse response) { return ReposMergeSuccess201(Commit.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Commit data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposMergeSuccess201 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposMergeSuccess201($data)'; } 
 }
/// The `204` response.
@immutable final class ReposMergeSuccess204 extends ReposMergeSuccess {const ReposMergeSuccess204();

factory ReposMergeSuccess204.parse(ApiResponse _) { return const ReposMergeSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposMergeSuccess204; } 
@override int get hashCode { return (ReposMergeSuccess204).hashCode; } 
@override String toString() { return 'ReposMergeSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposMergeSuccess$Unknown extends ReposMergeSuccess {const ReposMergeSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposMergeSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposMergeSuccess.unknown($statusCode)'; } 
 }
