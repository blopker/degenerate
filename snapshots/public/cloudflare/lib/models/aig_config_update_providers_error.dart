// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_providers_response400.dart';import 'aig_config_update_providers_response404.dart';/// Error responses of `PUT /accounts/{account_id}/ai-gateway/gateways/{gateway_id}/provider_configs/{id}`.
sealed class AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError();

/// Parse the variant matching the response status code.
factory AigConfigUpdateProvidersError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AigConfigUpdateProvidersError400.parse(response),
  404 => AigConfigUpdateProvidersError404.parse(response),
  _ => AigConfigUpdateProvidersError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AigConfigUpdateProvidersError400 extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError400(this.data);

factory AigConfigUpdateProvidersError400.parse(ApiResponse response) { return AigConfigUpdateProvidersError400(AigConfigUpdateProvidersResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateProvidersResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateProvidersError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateProvidersError400($data)'; } 
 }
/// The `404` response.
@immutable final class AigConfigUpdateProvidersError404 extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError404(this.data);

factory AigConfigUpdateProvidersError404.parse(ApiResponse response) { return AigConfigUpdateProvidersError404(AigConfigUpdateProvidersResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateProvidersResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateProvidersError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateProvidersError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AigConfigUpdateProvidersError$Unknown extends AigConfigUpdateProvidersError {const AigConfigUpdateProvidersError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateProvidersError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AigConfigUpdateProvidersError.unknown($statusCode)'; } 
 }
