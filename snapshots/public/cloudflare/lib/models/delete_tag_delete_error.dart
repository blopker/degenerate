// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_tag_delete_response400.dart';import 'delete_tag_delete_response404.dart';/// Error responses of `DELETE /accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`.
sealed class DeleteTagDeleteError {const DeleteTagDeleteError();

/// Parse the variant matching the response status code.
factory DeleteTagDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DeleteTagDeleteError400.parse(response),
  404 => DeleteTagDeleteError404.parse(response),
  _ => DeleteTagDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DeleteTagDeleteError400 extends DeleteTagDeleteError {const DeleteTagDeleteError400(this.data);

factory DeleteTagDeleteError400.parse(ApiResponse response) { return DeleteTagDeleteError400(DeleteTagDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteTagDeleteResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagDeleteError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteTagDeleteError400($data)'; } 
 }
/// The `404` response.
@immutable final class DeleteTagDeleteError404 extends DeleteTagDeleteError {const DeleteTagDeleteError404(this.data);

factory DeleteTagDeleteError404.parse(ApiResponse response) { return DeleteTagDeleteError404(DeleteTagDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteTagDeleteResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteTagDeleteError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteTagDeleteError$Unknown extends DeleteTagDeleteError {const DeleteTagDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteTagDeleteError.unknown($statusCode)'; } 
 }
