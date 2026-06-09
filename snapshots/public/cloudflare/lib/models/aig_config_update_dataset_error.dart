// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_dataset_response400.dart';import 'aig_config_update_dataset_response404.dart';/// Error responses of `PUT /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/datasets/{id}`.
sealed class AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError();

/// Parse the variant matching the response status code.
factory AigConfigUpdateDatasetError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AigConfigUpdateDatasetError400.parse(response),
  404 => AigConfigUpdateDatasetError404.parse(response),
  _ => AigConfigUpdateDatasetError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AigConfigUpdateDatasetError400 extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError400(this.data);

factory AigConfigUpdateDatasetError400.parse(ApiResponse response) { return AigConfigUpdateDatasetError400(AigConfigUpdateDatasetResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateDatasetResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateDatasetError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateDatasetError400($data)'; } 
 }
/// The `404` response.
@immutable final class AigConfigUpdateDatasetError404 extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError404(this.data);

factory AigConfigUpdateDatasetError404.parse(ApiResponse response) { return AigConfigUpdateDatasetError404(AigConfigUpdateDatasetResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateDatasetResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateDatasetError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateDatasetError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AigConfigUpdateDatasetError$Unknown extends AigConfigUpdateDatasetError {const AigConfigUpdateDatasetError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateDatasetError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AigConfigUpdateDatasetError.unknown($statusCode)'; } 
 }
