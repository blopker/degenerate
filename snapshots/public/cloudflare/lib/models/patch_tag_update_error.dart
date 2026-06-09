// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_tag_update_response400.dart';import 'patch_tag_update_response404.dart';/// Error responses of `PATCH /accounts/{account_id}/cloudforce-one/events/tags/{tag_uuid}`.
sealed class PatchTagUpdateError {const PatchTagUpdateError();

/// Parse the variant matching the response status code.
factory PatchTagUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PatchTagUpdateError400.parse(response),
  404 => PatchTagUpdateError404.parse(response),
  _ => PatchTagUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PatchTagUpdateError400 extends PatchTagUpdateError {const PatchTagUpdateError400(this.data);

factory PatchTagUpdateError400.parse(ApiResponse response) { return PatchTagUpdateError400(PatchTagUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchTagUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchTagUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PatchTagUpdateError404 extends PatchTagUpdateError {const PatchTagUpdateError404(this.data);

factory PatchTagUpdateError404.parse(ApiResponse response) { return PatchTagUpdateError404(PatchTagUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchTagUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchTagUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PatchTagUpdateError$Unknown extends PatchTagUpdateError {const PatchTagUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchTagUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PatchTagUpdateError.unknown($statusCode)'; } 
 }
