// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_indicator_tags_list_response400.dart';import 'get_indicator_tags_list_response404.dart';import 'get_indicator_tags_list_response500.dart';/// Error responses of `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/tags`.
sealed class GetIndicatorTagsListError {const GetIndicatorTagsListError();

/// Parse the variant matching the response status code.
factory GetIndicatorTagsListError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => GetIndicatorTagsListError400.parse(response),
  404 => GetIndicatorTagsListError404.parse(response),
  500 => GetIndicatorTagsListError500.parse(response),
  _ => GetIndicatorTagsListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class GetIndicatorTagsListError400 extends GetIndicatorTagsListError {const GetIndicatorTagsListError400(this.data);

factory GetIndicatorTagsListError400.parse(ApiResponse response) { return GetIndicatorTagsListError400(GetIndicatorTagsListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetIndicatorTagsListResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIndicatorTagsListError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetIndicatorTagsListError400($data)'; } 
 }
/// The `404` response.
@immutable final class GetIndicatorTagsListError404 extends GetIndicatorTagsListError {const GetIndicatorTagsListError404(this.data);

factory GetIndicatorTagsListError404.parse(ApiResponse response) { return GetIndicatorTagsListError404(GetIndicatorTagsListResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetIndicatorTagsListResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIndicatorTagsListError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetIndicatorTagsListError404($data)'; } 
 }
/// The `500` response.
@immutable final class GetIndicatorTagsListError500 extends GetIndicatorTagsListError {const GetIndicatorTagsListError500(this.data);

factory GetIndicatorTagsListError500.parse(ApiResponse response) { return GetIndicatorTagsListError500(GetIndicatorTagsListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetIndicatorTagsListResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIndicatorTagsListError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetIndicatorTagsListError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetIndicatorTagsListError$Unknown extends GetIndicatorTagsListError {const GetIndicatorTagsListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetIndicatorTagsListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetIndicatorTagsListError.unknown($statusCode)'; } 
 }
