// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'delete_tag_category_delete_response400.dart';import 'delete_tag_category_delete_response404.dart';/// Error responses of `DELETE /accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`.
sealed class DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError();

/// Parse the variant matching the response status code.
factory DeleteTagCategoryDeleteError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => DeleteTagCategoryDeleteError400.parse(response),
  404 => DeleteTagCategoryDeleteError404.parse(response),
  _ => DeleteTagCategoryDeleteError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class DeleteTagCategoryDeleteError400 extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError400(this.data);

factory DeleteTagCategoryDeleteError400.parse(ApiResponse response) { return DeleteTagCategoryDeleteError400(DeleteTagCategoryDeleteResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteTagCategoryDeleteResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagCategoryDeleteError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteTagCategoryDeleteError400($data)'; } 
 }
/// The `404` response.
@immutable final class DeleteTagCategoryDeleteError404 extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError404(this.data);

factory DeleteTagCategoryDeleteError404.parse(ApiResponse response) { return DeleteTagCategoryDeleteError404(DeleteTagCategoryDeleteResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final DeleteTagCategoryDeleteResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagCategoryDeleteError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'DeleteTagCategoryDeleteError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class DeleteTagCategoryDeleteError$Unknown extends DeleteTagCategoryDeleteError {const DeleteTagCategoryDeleteError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is DeleteTagCategoryDeleteError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'DeleteTagCategoryDeleteError.unknown($statusCode)'; } 
 }
