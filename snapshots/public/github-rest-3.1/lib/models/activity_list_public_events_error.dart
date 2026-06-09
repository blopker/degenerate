// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'activity_list_public_events_response503.dart';import 'basic_error.dart';/// Error responses of `GET /events`.
sealed class ActivityListPublicEventsError {const ActivityListPublicEventsError();

/// Parse the variant matching the response status code.
factory ActivityListPublicEventsError.parse(ApiResponse response) { return switch (response.statusCode) {
  304 => ActivityListPublicEventsError304.parse(response),
  403 => ActivityListPublicEventsError403.parse(response),
  503 => ActivityListPublicEventsError503.parse(response),
  _ => ActivityListPublicEventsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `304` response.
@immutable final class ActivityListPublicEventsError304 extends ActivityListPublicEventsError {const ActivityListPublicEventsError304();

factory ActivityListPublicEventsError304.parse(ApiResponse _) { return const ActivityListPublicEventsError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityListPublicEventsError304; } 
@override int get hashCode { return (ActivityListPublicEventsError304).hashCode; } 
@override String toString() { return 'ActivityListPublicEventsError304()'; } 
 }
/// The `403` response.
@immutable final class ActivityListPublicEventsError403 extends ActivityListPublicEventsError {const ActivityListPublicEventsError403(this.data);

factory ActivityListPublicEventsError403.parse(ApiResponse response) { return ActivityListPublicEventsError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListPublicEventsError403($data)'; } 
 }
/// The `503` response.
@immutable final class ActivityListPublicEventsError503 extends ActivityListPublicEventsError {const ActivityListPublicEventsError503(this.data);

factory ActivityListPublicEventsError503.parse(ApiResponse response) { return ActivityListPublicEventsError503(ActivityListPublicEventsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final ActivityListPublicEventsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListPublicEventsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityListPublicEventsError$Unknown extends ActivityListPublicEventsError {const ActivityListPublicEventsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityListPublicEventsError.unknown($statusCode)'; } 
 }
