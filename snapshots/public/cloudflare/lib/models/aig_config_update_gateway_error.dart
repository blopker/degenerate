// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_response400.dart';import 'aig_config_update_gateway_response404.dart';/// Error responses of `PUT /accounts/{account_id}/ai-gateway/gateways/{id}`.
sealed class AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError();

/// Parse the variant matching the response status code.
factory AigConfigUpdateGatewayError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AigConfigUpdateGatewayError400.parse(response),
  404 => AigConfigUpdateGatewayError404.parse(response),
  _ => AigConfigUpdateGatewayError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AigConfigUpdateGatewayError400 extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError400(this.data);

factory AigConfigUpdateGatewayError400.parse(ApiResponse response) { return AigConfigUpdateGatewayError400(AigConfigUpdateGatewayResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateGatewayResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayError400($data)'; } 
 }
/// The `404` response.
@immutable final class AigConfigUpdateGatewayError404 extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError404(this.data);

factory AigConfigUpdateGatewayError404.parse(ApiResponse response) { return AigConfigUpdateGatewayError404(AigConfigUpdateGatewayResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AigConfigUpdateGatewayResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AigConfigUpdateGatewayError$Unknown extends AigConfigUpdateGatewayError {const AigConfigUpdateGatewayError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AigConfigUpdateGatewayError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AigConfigUpdateGatewayError.unknown($statusCode)'; } 
 }
