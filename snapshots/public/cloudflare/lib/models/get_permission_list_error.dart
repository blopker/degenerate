// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'get_permission_list_response400.dart';import 'get_permission_list_response404.dart';/// Error responses of `GET /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions`.
sealed class GetPermissionListError {const GetPermissionListError();

/// Parse the variant matching the response status code.
factory GetPermissionListError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => GetPermissionListError400.parse(response),
  404 => GetPermissionListError404.parse(response),
  _ => GetPermissionListError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class GetPermissionListError400 extends GetPermissionListError {const GetPermissionListError400(this.data);

factory GetPermissionListError400.parse(ApiResponse response) { return GetPermissionListError400(GetPermissionListResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetPermissionListResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPermissionListError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetPermissionListError400($data)'; } 
 }
/// The `404` response.
@immutable final class GetPermissionListError404 extends GetPermissionListError {const GetPermissionListError404(this.data);

factory GetPermissionListError404.parse(ApiResponse response) { return GetPermissionListError404(GetPermissionListResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final GetPermissionListResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPermissionListError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'GetPermissionListError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class GetPermissionListError$Unknown extends GetPermissionListError {const GetPermissionListError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetPermissionListError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'GetPermissionListError.unknown($statusCode)'; } 
 }
