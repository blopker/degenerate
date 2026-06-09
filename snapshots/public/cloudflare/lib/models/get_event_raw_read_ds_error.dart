// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_event_raw_read_ds_response404.dart';import 'get_event_raw_read_ds_response500.dart';/// Error responses of `GET /accounts/{account_id}/cloudforce-one/events/raw/{dataset_id}/{event_id}`.
sealed class GetEventRawReadDsError {const GetEventRawReadDsError();

/// Parse the variant matching the response status code.
factory GetEventRawReadDsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => GetEventRawReadDsError404.parse(response),
  500 => GetEventRawReadDsError500.parse(response),
  _ => GetEventRawReadDsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class GetEventRawReadDsError404 extends GetEventRawReadDsError {const GetEventRawReadDsError404(this.data);

factory GetEventRawReadDsError404.parse(ApiResponse response) { return GetEventRawReadDsError404(GetEventRawReadDsResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetEventRawReadDsResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEventRawReadDsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetEventRawReadDsError404($data)'; } 
 }
/// The `500` response.
@immutable final class GetEventRawReadDsError500 extends GetEventRawReadDsError {const GetEventRawReadDsError500(this.data);

factory GetEventRawReadDsError500.parse(ApiResponse response) { return GetEventRawReadDsError500(GetEventRawReadDsResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetEventRawReadDsResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEventRawReadDsError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetEventRawReadDsError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetEventRawReadDsError$Unknown extends GetEventRawReadDsError {const GetEventRawReadDsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetEventRawReadDsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetEventRawReadDsError.unknown($statusCode)'; } 
 }
