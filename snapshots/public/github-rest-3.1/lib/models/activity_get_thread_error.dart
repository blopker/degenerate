// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /notifications/threads/{thread_id}`.
sealed class ActivityGetThreadError {const ActivityGetThreadError();

/// Parse the variant matching the response status code.
factory ActivityGetThreadError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityGetThreadError304.parse(response),
  401 => ActivityGetThreadError401.parse(response),
  403 => ActivityGetThreadError403.parse(response),
  _ => ActivityGetThreadError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityGetThreadError304 extends ActivityGetThreadError {const ActivityGetThreadError304();

factory ActivityGetThreadError304.parse(ApiResponse _) { return const ActivityGetThreadError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityGetThreadError304; } 
@override int get hashCode { return (ActivityGetThreadError304).hashCode; } 
@override String toString() { return 'ActivityGetThreadError304()'; } 
 }
/// The `401` response.
@immutable final class ActivityGetThreadError401 extends ActivityGetThreadError {const ActivityGetThreadError401(this.data);

factory ActivityGetThreadError401.parse(ApiResponse response) { return ActivityGetThreadError401(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityGetThreadError401($data)'; } 
 }
/// The `403` response.
@immutable final class ActivityGetThreadError403 extends ActivityGetThreadError {const ActivityGetThreadError403(this.data);

factory ActivityGetThreadError403.parse(ApiResponse response) { return ActivityGetThreadError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityGetThreadError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityGetThreadError$Unknown extends ActivityGetThreadError {const ActivityGetThreadError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetThreadError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityGetThreadError.unknown($statusCode)'; } 
 }
