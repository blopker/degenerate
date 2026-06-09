// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';/// Error responses of `GET /networks/{owner}/{repo}/events`.
sealed class ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError();

/// Parse the variant matching the response status code.
factory ActivityListPublicEventsForRepoNetworkError.parse(ApiResponse response) { return switch (response.statusCode) {
  301 => ActivityListPublicEventsForRepoNetworkError301.parse(response),
  304 => ActivityListPublicEventsForRepoNetworkError304.parse(response),
  403 => ActivityListPublicEventsForRepoNetworkError403.parse(response),
  404 => ActivityListPublicEventsForRepoNetworkError404.parse(response),
  _ => ActivityListPublicEventsForRepoNetworkError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `301` response.
@immutable final class ActivityListPublicEventsForRepoNetworkError301 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError301(this.data);

factory ActivityListPublicEventsForRepoNetworkError301.parse(ApiResponse response) { return ActivityListPublicEventsForRepoNetworkError301(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsForRepoNetworkError301 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListPublicEventsForRepoNetworkError301($data)'; } 
 }
/// The `304` response.
@immutable final class ActivityListPublicEventsForRepoNetworkError304 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError304();

factory ActivityListPublicEventsForRepoNetworkError304.parse(ApiResponse _) { return const ActivityListPublicEventsForRepoNetworkError304(); }

@override bool operator ==(Object other) { return identical(this, other) || other is ActivityListPublicEventsForRepoNetworkError304; } 
@override int get hashCode { return (ActivityListPublicEventsForRepoNetworkError304).hashCode; } 
@override String toString() { return 'ActivityListPublicEventsForRepoNetworkError304()'; } 
 }
/// The `403` response.
@immutable final class ActivityListPublicEventsForRepoNetworkError403 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError403(this.data);

factory ActivityListPublicEventsForRepoNetworkError403.parse(ApiResponse response) { return ActivityListPublicEventsForRepoNetworkError403(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsForRepoNetworkError403 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListPublicEventsForRepoNetworkError403($data)'; } 
 }
/// The `404` response.
@immutable final class ActivityListPublicEventsForRepoNetworkError404 extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError404(this.data);

factory ActivityListPublicEventsForRepoNetworkError404.parse(ApiResponse response) { return ActivityListPublicEventsForRepoNetworkError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsForRepoNetworkError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'ActivityListPublicEventsForRepoNetworkError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class ActivityListPublicEventsForRepoNetworkError$Unknown extends ActivityListPublicEventsForRepoNetworkError {const ActivityListPublicEventsForRepoNetworkError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActivityListPublicEventsForRepoNetworkError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'ActivityListPublicEventsForRepoNetworkError.unknown($statusCode)'; } 
 }
