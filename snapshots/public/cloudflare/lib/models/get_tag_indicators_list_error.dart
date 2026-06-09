// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_tag_indicators_list_response400.dart';import 'get_tag_indicators_list_response404.dart';import 'get_tag_indicators_list_response500.dart';/// Error responses of `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/tags/{tag_uuid}/indicators`.
sealed class GetTagIndicatorsListError {const GetTagIndicatorsListError();

/// Parse the variant matching the response status code.
factory GetTagIndicatorsListError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => GetTagIndicatorsListError400.parse(response),
  404 => GetTagIndicatorsListError404.parse(response),
  500 => GetTagIndicatorsListError500.parse(response),
  _ => GetTagIndicatorsListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class GetTagIndicatorsListError400 extends GetTagIndicatorsListError {const GetTagIndicatorsListError400(this.data);

factory GetTagIndicatorsListError400.parse(ApiResponse response) { return GetTagIndicatorsListError400(GetTagIndicatorsListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetTagIndicatorsListResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTagIndicatorsListError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetTagIndicatorsListError400($data)'; } 
 }
/// The `404` response.
@immutable final class GetTagIndicatorsListError404 extends GetTagIndicatorsListError {const GetTagIndicatorsListError404(this.data);

factory GetTagIndicatorsListError404.parse(ApiResponse response) { return GetTagIndicatorsListError404(GetTagIndicatorsListResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetTagIndicatorsListResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTagIndicatorsListError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetTagIndicatorsListError404($data)'; } 
 }
/// The `500` response.
@immutable final class GetTagIndicatorsListError500 extends GetTagIndicatorsListError {const GetTagIndicatorsListError500(this.data);

factory GetTagIndicatorsListError500.parse(ApiResponse response) { return GetTagIndicatorsListError500(GetTagIndicatorsListResponse500.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetTagIndicatorsListResponse500 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTagIndicatorsListError500 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetTagIndicatorsListError500($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetTagIndicatorsListError$Unknown extends GetTagIndicatorsListError {const GetTagIndicatorsListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetTagIndicatorsListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetTagIndicatorsListError.unknown($statusCode)'; } 
 }
