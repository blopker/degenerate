// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_item_response4xx.dart';import 'delete_item_response5xx.dart';/// Error responses of `DELETE /items/{id}`.
sealed class DeleteItemError {const DeleteItemError();

/// Parse the variant matching the response status code.
factory DeleteItemError.parse(ApiResponse response) { return switch (response.statusCode) {
  >= 400 && <= 499 => DeleteItemError4xx.parse(response),
  >= 500 && <= 599 => DeleteItemError5xx.parse(response),
  _ => DeleteItemError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `4XX` range response.
@immutable final class DeleteItemError4xx extends DeleteItemError {const DeleteItemError4xx(this.data);

factory DeleteItemError4xx.parse(ApiResponse response) { return DeleteItemError4xx(DeleteItemResponse4xx.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteItemResponse4xx data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteItemError4xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteItemError4xx($data)'; } 
 }
/// The `5XX` range response.
@immutable final class DeleteItemError5xx extends DeleteItemError {const DeleteItemError5xx(this.data);

factory DeleteItemError5xx.parse(ApiResponse response) { return DeleteItemError5xx(DeleteItemResponse5xx.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteItemResponse5xx data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteItemError5xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteItemError5xx($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteItemError$Unknown extends DeleteItemError {const DeleteItemError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteItemError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteItemError.unknown($statusCode)'; } 
 }
