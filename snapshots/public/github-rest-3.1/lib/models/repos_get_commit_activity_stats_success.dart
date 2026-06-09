// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'commit_activity.dart';/// Success responses of `GET /repos/{owner}/{repo}/stats/commit_activity`.
sealed class ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess();

/// Parse the variant matching the response status code.
factory ReposGetCommitActivityStatsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposGetCommitActivityStatsSuccess200.parse(response),
  202 => ReposGetCommitActivityStatsSuccess202.parse(response),
  204 => ReposGetCommitActivityStatsSuccess204.parse(response),
  _ => ReposGetCommitActivityStatsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposGetCommitActivityStatsSuccess200 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess200(this.data);

factory ReposGetCommitActivityStatsSuccess200.parse(ApiResponse response) { final json = jsonDecode(response.body) as List<dynamic>;
return ReposGetCommitActivityStatsSuccess200(json.map((e) => CommitActivity.fromJson(e as Map<String, dynamic>)).toList()); }

final List<CommitActivity> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitActivityStatsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitActivityStatsSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class ReposGetCommitActivityStatsSuccess202 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess202(this.data);

factory ReposGetCommitActivityStatsSuccess202.parse(ApiResponse response) { return ReposGetCommitActivityStatsSuccess202(jsonDecode(response.body) as Map<String, dynamic>); }

final Map<String,dynamic> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitActivityStatsSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCommitActivityStatsSuccess202($data)'; } 
 }
/// The `204` response.
@immutable final class ReposGetCommitActivityStatsSuccess204 extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess204();

factory ReposGetCommitActivityStatsSuccess204.parse(ApiResponse _) { return const ReposGetCommitActivityStatsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetCommitActivityStatsSuccess204; } 
@override int get hashCode { return (ReposGetCommitActivityStatsSuccess204).hashCode; } 
@override String toString() { return 'ReposGetCommitActivityStatsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetCommitActivityStatsSuccess$Unknown extends ReposGetCommitActivityStatsSuccess {const ReposGetCommitActivityStatsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCommitActivityStatsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetCommitActivityStatsSuccess.unknown($statusCode)'; } 
 }
