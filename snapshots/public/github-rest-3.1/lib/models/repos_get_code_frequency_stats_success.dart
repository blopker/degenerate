// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';/// Success responses of `GET /repos/{owner}/{repo}/stats/code_frequency`.
sealed class ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess();

/// Parse the variant matching the response status code.
factory ReposGetCodeFrequencyStatsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposGetCodeFrequencyStatsSuccess200.parse(response),
  202 => ReposGetCodeFrequencyStatsSuccess202.parse(response),
  204 => ReposGetCodeFrequencyStatsSuccess204.parse(response),
  _ => ReposGetCodeFrequencyStatsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposGetCodeFrequencyStatsSuccess200 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess200(this.data);

factory ReposGetCodeFrequencyStatsSuccess200.parse(ApiResponse response) { final json = jsonDecode(response.body) as List<dynamic>;
return ReposGetCodeFrequencyStatsSuccess200(json.map((e) => (e as List<dynamic>).map((e) => (e as num).toInt()).toList()).toList()); }

final List<List<int>> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCodeFrequencyStatsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCodeFrequencyStatsSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class ReposGetCodeFrequencyStatsSuccess202 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess202(this.data);

factory ReposGetCodeFrequencyStatsSuccess202.parse(ApiResponse response) { return ReposGetCodeFrequencyStatsSuccess202(jsonDecode(response.body) as Map<String, dynamic>); }

final Map<String,dynamic> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCodeFrequencyStatsSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetCodeFrequencyStatsSuccess202($data)'; } 
 }
/// The `204` response.
@immutable final class ReposGetCodeFrequencyStatsSuccess204 extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess204();

factory ReposGetCodeFrequencyStatsSuccess204.parse(ApiResponse _) { return const ReposGetCodeFrequencyStatsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposGetCodeFrequencyStatsSuccess204; } 
@override int get hashCode { return (ReposGetCodeFrequencyStatsSuccess204).hashCode; } 
@override String toString() { return 'ReposGetCodeFrequencyStatsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetCodeFrequencyStatsSuccess$Unknown extends ReposGetCodeFrequencyStatsSuccess {const ReposGetCodeFrequencyStatsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetCodeFrequencyStatsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetCodeFrequencyStatsSuccess.unknown($statusCode)'; } 
 }
