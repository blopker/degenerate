// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_permission_delete_response400.dart';import 'delete_permission_delete_response404.dart';/// Error responses of `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/permissions/{grant_id}`.
sealed class DeletePermissionDeleteError {const DeletePermissionDeleteError();

/// Parse the variant matching the response status code.
factory DeletePermissionDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DeletePermissionDeleteError400.parse(response),
  404 => DeletePermissionDeleteError404.parse(response),
  _ => DeletePermissionDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DeletePermissionDeleteError400 extends DeletePermissionDeleteError {const DeletePermissionDeleteError400(this.data);

factory DeletePermissionDeleteError400.parse(ApiResponse response) { return DeletePermissionDeleteError400(DeletePermissionDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeletePermissionDeleteResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePermissionDeleteError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeletePermissionDeleteError400($data)'; } 
 }
/// The `404` response.
@immutable final class DeletePermissionDeleteError404 extends DeletePermissionDeleteError {const DeletePermissionDeleteError404(this.data);

factory DeletePermissionDeleteError404.parse(ApiResponse response) { return DeletePermissionDeleteError404(DeletePermissionDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeletePermissionDeleteResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePermissionDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeletePermissionDeleteError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeletePermissionDeleteError$Unknown extends DeletePermissionDeleteError {const DeletePermissionDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeletePermissionDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeletePermissionDeleteError.unknown($statusCode)'; } 
 }
