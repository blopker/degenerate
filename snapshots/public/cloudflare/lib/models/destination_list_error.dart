// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'destination_list_response401.dart';import 'destination_list_response404.dart';import 'destination_list_response500.dart';/// Error responses of `GET /accounts/{account_id}/workers/observability/destinations`.
sealed class DestinationListError {const DestinationListError();

/// Parse the variant matching the response status code.
factory DestinationListError.parse(ApiResponse response) { return switch (response.statusCode) {
  401 => DestinationListError401.parse(response),
  404 => DestinationListError404.parse(response),
  500 => DestinationListError500.parse(response),
  _ => DestinationListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `401` response.
@immutable final class DestinationListError401 extends DestinationListError {const DestinationListError401(this.data);

factory DestinationListError401.parse(ApiResponse response) { return DestinationListError401(DestinationListResponse401.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationListResponse401 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListError401 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationListError401($data)'; } 
 }
/// The `404` response.
@immutable final class DestinationListError404 extends DestinationListError {const DestinationListError404(this.data);

factory DestinationListError404.parse(ApiResponse response) { return DestinationListError404(DestinationListResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationListResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationListError404($data)'; } 
 }
/// The `500` response.
@immutable final class DestinationListError500 extends DestinationListError {const DestinationListError500(this.data);

factory DestinationListError500.parse(ApiResponse response) { return DestinationListError500(DestinationListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DestinationListResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DestinationListError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DestinationListError$Unknown extends DestinationListError {const DestinationListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DestinationListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DestinationListError.unknown($statusCode)'; } 
 }
