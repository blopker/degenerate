// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'contributor.dart';/// Success responses of `GET /repos/{owner}/{repo}/contributors`.
sealed class ReposListContributorsSuccess {const ReposListContributorsSuccess();

/// Parse the variant matching the response status code.
factory ReposListContributorsSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposListContributorsSuccess200.parse(response),
  204 => ReposListContributorsSuccess204.parse(response),
  _ => ReposListContributorsSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposListContributorsSuccess200 extends ReposListContributorsSuccess {const ReposListContributorsSuccess200(this.data);

factory ReposListContributorsSuccess200.parse(ApiResponse response) { final json = jsonDecode(response.body) as List<dynamic>;
return ReposListContributorsSuccess200(json.map((e) => Contributor.fromJson(e as Map<String, dynamic>)).toList()); }

final List<Contributor> data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListContributorsSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposListContributorsSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class ReposListContributorsSuccess204 extends ReposListContributorsSuccess {const ReposListContributorsSuccess204();

factory ReposListContributorsSuccess204.parse(ApiResponse _) { return const ReposListContributorsSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ReposListContributorsSuccess204; } 
@override int get hashCode { return (ReposListContributorsSuccess204).hashCode; } 
@override String toString() { return 'ReposListContributorsSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposListContributorsSuccess$Unknown extends ReposListContributorsSuccess {const ReposListContributorsSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposListContributorsSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposListContributorsSuccess.unknown($statusCode)'; } 
 }
