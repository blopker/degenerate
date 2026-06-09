// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'empty_object.dart';import 'pages_health_check.dart';/// Success responses of `GET /repos/{owner}/{repo}/pages/health`.
sealed class ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess();

/// Parse the variant matching the response status code.
factory ReposGetPagesHealthCheckSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => ReposGetPagesHealthCheckSuccess200.parse(response),
  202 => ReposGetPagesHealthCheckSuccess202.parse(response),
  _ => ReposGetPagesHealthCheckSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class ReposGetPagesHealthCheckSuccess200 extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess200(this.data);

factory ReposGetPagesHealthCheckSuccess200.parse(ApiResponse response) { return ReposGetPagesHealthCheckSuccess200(PagesHealthCheck.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PagesHealthCheck data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPagesHealthCheckSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetPagesHealthCheckSuccess200($data)'; } 
 }
/// The `202` response.
@immutable final class ReposGetPagesHealthCheckSuccess202 extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess202(this.data);

factory ReposGetPagesHealthCheckSuccess202.parse(ApiResponse response) { return ReposGetPagesHealthCheckSuccess202(EmptyObject.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final EmptyObject data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPagesHealthCheckSuccess202 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ReposGetPagesHealthCheckSuccess202($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ReposGetPagesHealthCheckSuccess$Unknown extends ReposGetPagesHealthCheckSuccess {const ReposGetPagesHealthCheckSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReposGetPagesHealthCheckSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ReposGetPagesHealthCheckSuccess.unknown($statusCode)'; } 
 }
