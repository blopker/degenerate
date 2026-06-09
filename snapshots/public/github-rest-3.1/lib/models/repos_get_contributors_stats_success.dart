// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'contributor_activity.dart';/// Success responses of `GET /repos/{owner}/{repo}/stats/contributors`.
sealed class ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess();

/// Parse the variant matching the response status code.
factory ReposGetContributorsStatsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposGetContributorsStatsSuccess200.parse(response),
  202 => ReposGetContributorsStatsSuccess202.parse(response),
  204 => ReposGetContributorsStatsSuccess204.parse(response),
  _ => ReposGetContributorsStatsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposGetContributorsStatsSuccess200 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess200(this.data);

factory ReposGetContributorsStatsSuccess200.parse(ApiResponse response) { final json = jsonDecode(response.body) as List<dynamic>;
return ReposGetContributorsStatsSuccess200(json.map((e) => ContributorActivity.fromJson(e as Map<String, dynamic>)).toList()); }

final List<ContributorActivity> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContributorsStatsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetContributorsStatsSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class ReposGetContributorsStatsSuccess202 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess202(this.data);

factory ReposGetContributorsStatsSuccess202.parse(ApiResponse response) { return ReposGetContributorsStatsSuccess202(jsonDecode(response.body) as Map<String, dynamic>); }

final Map<String,dynamic> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContributorsStatsSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetContributorsStatsSuccess202($data)'; } 
 }
/// The `204` response.
@immutable final class ReposGetContributorsStatsSuccess204 extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess204();

factory ReposGetContributorsStatsSuccess204.parse(ApiResponse _) { return const ReposGetContributorsStatsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetContributorsStatsSuccess204; } 
@override int get hashCode { return (ReposGetContributorsStatsSuccess204).hashCode; } 
@override String toString() { return 'ReposGetContributorsStatsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetContributorsStatsSuccess$Unknown extends ReposGetContributorsStatsSuccess {const ReposGetContributorsStatsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetContributorsStatsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetContributorsStatsSuccess.unknown($statusCode)'; } 
 }
