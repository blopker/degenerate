// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_item_response.dart';/// Success responses of `DELETE /items/{id}`.
sealed class DeleteItemSuccess {const DeleteItemSuccess();

/// Parse the variant matching the response status code.
factory DeleteItemSuccess.parse(ApiResponse response) { return switch (response.statusCode) {
  200 => DeleteItemSuccess200.parse(response),
  204 => DeleteItemSuccess204.parse(response),
  _ => DeleteItemSuccess$Unknown(response.statusCode, response.body),
}; }

 }
/// The `200` response.
@immutable final class DeleteItemSuccess200 extends DeleteItemSuccess {const DeleteItemSuccess200(this.data);

factory DeleteItemSuccess200.parse(ApiResponse response) { return DeleteItemSuccess200(DeleteItemResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteItemResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteItemSuccess200 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteItemSuccess200($data)'; } 
 }
/// The `204` response.
@immutable final class DeleteItemSuccess204 extends DeleteItemSuccess {const DeleteItemSuccess204();

factory DeleteItemSuccess204.parse(ApiResponse _) { return const DeleteItemSuccess204(); }

@override bool operator ==(Object other) { return identical(this, other) || other is DeleteItemSuccess204; } 
@override int get hashCode { return (DeleteItemSuccess204).hashCode; } 
@override String toString() { return 'DeleteItemSuccess204()'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteItemSuccess$Unknown extends DeleteItemSuccess {const DeleteItemSuccess$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteItemSuccess$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteItemSuccess.unknown($statusCode)'; } 
 }
