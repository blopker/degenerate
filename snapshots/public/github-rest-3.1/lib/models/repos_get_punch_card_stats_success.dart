// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success responses of `GET /repos/{owner}/{repo}/stats/punch_card`.
sealed class ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess();

/// Parse the variant matching the response status code.
factory ReposGetPunchCardStatsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposGetPunchCardStatsSuccess200.parse(response),
  204 => ReposGetPunchCardStatsSuccess204.parse(response),
  _ => ReposGetPunchCardStatsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposGetPunchCardStatsSuccess200 extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess200(this.data);

factory ReposGetPunchCardStatsSuccess200.parse(ApiResponse response) { final json = jsonDecode(response.body) as List<dynamic>;
return ReposGetPunchCardStatsSuccess200(json.map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList()).toList()); }

final List<List<int>> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPunchCardStatsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetPunchCardStatsSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class ReposGetPunchCardStatsSuccess204 extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess204();

factory ReposGetPunchCardStatsSuccess204.parse(ApiResponse _) { return const ReposGetPunchCardStatsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetPunchCardStatsSuccess204; } 
@override int get hashCode { return (ReposGetPunchCardStatsSuccess204).hashCode; } 
@override String toString() { return 'ReposGetPunchCardStatsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetPunchCardStatsSuccess$Unknown extends ReposGetPunchCardStatsSuccess {const ReposGetPunchCardStatsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPunchCardStatsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetPunchCardStatsSuccess.unknown($statusCode)'; } 
 }
