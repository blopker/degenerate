// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_dataset_delete_response400.dart';import 'delete_dataset_delete_response404.dart';/// Error responses of `DELETE /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}`.
sealed class DeleteDatasetDeleteError {const DeleteDatasetDeleteError();

/// Parse the variant matching the response status code.
factory DeleteDatasetDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DeleteDatasetDeleteError400.parse(response),
  404 => DeleteDatasetDeleteError404.parse(response),
  _ => DeleteDatasetDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DeleteDatasetDeleteError400 extends DeleteDatasetDeleteError {const DeleteDatasetDeleteError400(this.data);

factory DeleteDatasetDeleteError400.parse(ApiResponse response) { return DeleteDatasetDeleteError400(DeleteDatasetDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteDatasetDeleteResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteDatasetDeleteError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteDatasetDeleteError400($data)'; } 
 }
/// The `404` response.
@immutable final class DeleteDatasetDeleteError404 extends DeleteDatasetDeleteError {const DeleteDatasetDeleteError404(this.data);

factory DeleteDatasetDeleteError404.parse(ApiResponse response) { return DeleteDatasetDeleteError404(DeleteDatasetDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteDatasetDeleteResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteDatasetDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteDatasetDeleteError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteDatasetDeleteError$Unknown extends DeleteDatasetDeleteError {const DeleteDatasetDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteDatasetDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteDatasetDeleteError.unknown($statusCode)'; } 
 }
