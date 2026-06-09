// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'pulls_get_response503.dart';/// Error responses of `GET /repos/{owner}/{repo}/pulls/{pull_number}`.
sealed class PullsGetError {const PullsGetError();

/// Parse the variant matching the response status code.
factory PullsGetError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => PullsGetError304.parse(response),
  404 => PullsGetError404.parse(response),
  406 => PullsGetError406.parse(response),
  500 => PullsGetError500.parse(response),
  503 => PullsGetError503.parse(response),
  _ => PullsGetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class PullsGetError304 extends PullsGetError {const PullsGetError304();

factory PullsGetError304.parse(ApiResponse _) { return const PullsGetError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is PullsGetError304; } 
@override int get hashCode { return (PullsGetError304).hashCode; } 
@override String toString() { return 'PullsGetError304()'; } 
 }
/// The `404` response.
@immutable final class PullsGetError404 extends PullsGetError {const PullsGetError404(this.data);

factory PullsGetError404.parse(ApiResponse response) { return PullsGetError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsGetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsGetError404($data)'; } 
 }
/// The `406` response.
@immutable final class PullsGetError406 extends PullsGetError {const PullsGetError406(this.data);

factory PullsGetError406.parse(ApiResponse response) { return PullsGetError406(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsGetError406 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsGetError406($data)'; } 
 }
/// The `500` response.
@immutable final class PullsGetError500 extends PullsGetError {const PullsGetError500(this.data);

factory PullsGetError500.parse(ApiResponse response) { return PullsGetError500(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsGetError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsGetError500($data)'; } 
 }
/// The `503` response.
@immutable final class PullsGetError503 extends PullsGetError {const PullsGetError503(this.data);

factory PullsGetError503.parse(ApiResponse response) { return PullsGetError503(PullsGetResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PullsGetResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsGetError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PullsGetError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PullsGetError$Unknown extends PullsGetError {const PullsGetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PullsGetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PullsGetError.unknown($statusCode)'; } 
 }
