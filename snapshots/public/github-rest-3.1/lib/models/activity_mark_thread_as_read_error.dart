// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `PATCH /notifications/threads/{thread_id}`.
sealed class ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError();

/// Parse the variant matching the response status code.
factory ActivityMarkThreadAsReadError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityMarkThreadAsReadError304.parse(response),
  403 => ActivityMarkThreadAsReadError403.parse(response),
  _ => ActivityMarkThreadAsReadError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityMarkThreadAsReadError304 extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError304();

factory ActivityMarkThreadAsReadError304.parse(ApiResponse _) { return const ActivityMarkThreadAsReadError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityMarkThreadAsReadError304; } 
@override int get hashCode { return (ActivityMarkThreadAsReadError304).hashCode; } 
@override String toString() { return 'ActivityMarkThreadAsReadError304()'; } 
 }
/// The `403` response.
@immutable final class ActivityMarkThreadAsReadError403 extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError403(this.data);

factory ActivityMarkThreadAsReadError403.parse(ApiResponse response) { return ActivityMarkThreadAsReadError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkThreadAsReadError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityMarkThreadAsReadError403($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityMarkThreadAsReadError$Unknown extends ActivityMarkThreadAsReadError {const ActivityMarkThreadAsReadError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityMarkThreadAsReadError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityMarkThreadAsReadError.unknown($statusCode)'; } 
 }
