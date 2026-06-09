// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_update_instances_response400.dart';import 'ai_search_update_instances_response404.dart';/// Error responses of `PUT /accounts/{account_id}/ai-search/instances/{id}`.
sealed class AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError();

/// Parse the variant matching the response status code.
factory AiSearchUpdateInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchUpdateInstancesError400.parse(response),
  404 => AiSearchUpdateInstancesError404.parse(response),
  _ => AiSearchUpdateInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchUpdateInstancesError400 extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError400(this.data);

factory AiSearchUpdateInstancesError400.parse(ApiResponse response) { return AiSearchUpdateInstancesError400(AiSearchUpdateInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchUpdateInstancesResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesError400($data)'; } 
 }
/// The `404` response.
@immutable final class AiSearchUpdateInstancesError404 extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError404(this.data);

factory AiSearchUpdateInstancesError404.parse(ApiResponse response) { return AiSearchUpdateInstancesError404(AiSearchUpdateInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchUpdateInstancesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchUpdateInstancesError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchUpdateInstancesError$Unknown extends AiSearchUpdateInstancesError {const AiSearchUpdateInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchUpdateInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchUpdateInstancesError.unknown($statusCode)'; } 
 }
