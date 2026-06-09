// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'put_permission_update_response400.dart';import 'put_permission_update_response404.dart';/// Error responses of `PUT /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions/{grant_id}`.
sealed class PutPermissionUpdateError {const PutPermissionUpdateError();

/// Parse the variant matching the response status code.
factory PutPermissionUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PutPermissionUpdateError400.parse(response),
  404 => PutPermissionUpdateError404.parse(response),
  _ => PutPermissionUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PutPermissionUpdateError400 extends PutPermissionUpdateError {const PutPermissionUpdateError400(this.data);

factory PutPermissionUpdateError400.parse(ApiResponse response) { return PutPermissionUpdateError400(PutPermissionUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PutPermissionUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PutPermissionUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PutPermissionUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PutPermissionUpdateError404 extends PutPermissionUpdateError {const PutPermissionUpdateError404(this.data);

factory PutPermissionUpdateError404.parse(ApiResponse response) { return PutPermissionUpdateError404(PutPermissionUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PutPermissionUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PutPermissionUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PutPermissionUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PutPermissionUpdateError$Unknown extends PutPermissionUpdateError {const PutPermissionUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PutPermissionUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PutPermissionUpdateError.unknown($statusCode)'; } 
 }
