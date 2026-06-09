// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /repos/{owner}/{repo}/subscription`.
sealed class ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError();

/// Parse the variant matching the response status code.
factory ActivityGetRepoSubscriptionError.parse(ApiResponse response) { return switch (response.statusCode) {
  403 => ActivityGetRepoSubscriptionError403.parse(response),
  404 => ActivityGetRepoSubscriptionError404.parse(response),
  _ => ActivityGetRepoSubscriptionError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `403` response.
@immutable final class ActivityGetRepoSubscriptionError403 extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError403(this.data);

factory ActivityGetRepoSubscriptionError403.parse(ApiResponse response) { return ActivityGetRepoSubscriptionError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetRepoSubscriptionError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityGetRepoSubscriptionError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActivityGetRepoSubscriptionError404 extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError404();

factory ActivityGetRepoSubscriptionError404.parse(ApiResponse _) { return const ActivityGetRepoSubscriptionError404(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityGetRepoSubscriptionError404; } 
@override int get hashCode { return (ActivityGetRepoSubscriptionError404).hashCode; } 
@override String toString() { return 'ActivityGetRepoSubscriptionError404()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityGetRepoSubscriptionError$Unknown extends ActivityGetRepoSubscriptionError {const ActivityGetRepoSubscriptionError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityGetRepoSubscriptionError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityGetRepoSubscriptionError.unknown($statusCode)'; } 
 }
