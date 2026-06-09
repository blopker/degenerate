// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'patch_indicator_update_response400.dart';import 'patch_indicator_update_response404.dart';/// Error responses of `PATCH /accounts/{account_id}/cloudforce-one/events/dataset/{dataset_id}/indicators/{indicator_id}`.
sealed class PatchIndicatorUpdateError {const PatchIndicatorUpdateError();

/// Parse the variant matching the response status code.
factory PatchIndicatorUpdateError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => PatchIndicatorUpdateError400.parse(response),
  404 => PatchIndicatorUpdateError404.parse(response),
  _ => PatchIndicatorUpdateError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class PatchIndicatorUpdateError400 extends PatchIndicatorUpdateError {const PatchIndicatorUpdateError400(this.data);

factory PatchIndicatorUpdateError400.parse(ApiResponse response) { return PatchIndicatorUpdateError400(PatchIndicatorUpdateResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchIndicatorUpdateResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchIndicatorUpdateError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchIndicatorUpdateError400($data)'; } 
 }
/// The `404` response.
@immutable final class PatchIndicatorUpdateError404 extends PatchIndicatorUpdateError {const PatchIndicatorUpdateError404(this.data);

factory PatchIndicatorUpdateError404.parse(ApiResponse response) { return PatchIndicatorUpdateError404(PatchIndicatorUpdateResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final PatchIndicatorUpdateResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchIndicatorUpdateError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'PatchIndicatorUpdateError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class PatchIndicatorUpdateError$Unknown extends PatchIndicatorUpdateError {const PatchIndicatorUpdateError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is PatchIndicatorUpdateError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'PatchIndicatorUpdateError.unknown($statusCode)'; } 
 }
