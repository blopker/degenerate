// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_tag_category_update_response400.dart';import 'patch_tag_category_update_response404.dart';import 'patch_tag_category_update_response409.dart';/// Error responses of `PATCH /accounts/{account_id}/cloudforce-one/events/tags/categories/{category_uuid}`.
sealed class PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError();

/// Parse the variant matching the response status code.
factory PatchTagCategoryUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PatchTagCategoryUpdateError400.parse(response),
  404 => PatchTagCategoryUpdateError404.parse(response),
  409 => PatchTagCategoryUpdateError409.parse(response),
  _ => PatchTagCategoryUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PatchTagCategoryUpdateError400 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError400(this.data);

factory PatchTagCategoryUpdateError400.parse(ApiResponse response) { return PatchTagCategoryUpdateError400(PatchTagCategoryUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchTagCategoryUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagCategoryUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchTagCategoryUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PatchTagCategoryUpdateError404 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError404(this.data);

factory PatchTagCategoryUpdateError404.parse(ApiResponse response) { return PatchTagCategoryUpdateError404(PatchTagCategoryUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchTagCategoryUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagCategoryUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchTagCategoryUpdateError404($data)'; } 
 }
/// The `409` response.
@immutable final class PatchTagCategoryUpdateError409 extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError409(this.data);

factory PatchTagCategoryUpdateError409.parse(ApiResponse response) { return PatchTagCategoryUpdateError409(PatchTagCategoryUpdateResponse409.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchTagCategoryUpdateResponse409 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagCategoryUpdateError409 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchTagCategoryUpdateError409($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PatchTagCategoryUpdateError$Unknown extends PatchTagCategoryUpdateError {const PatchTagCategoryUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagCategoryUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PatchTagCategoryUpdateError.unknown($statusCode)'; } 
 }
