// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'ai_search_fetch_instances_response400.dart';import 'ai_search_fetch_instances_response404.dart';/// Error responses of `GET /accounts/{account_id}/ai-search/instances/{id}`.
sealed class AiSearchFetchInstancesError {const AiSearchFetchInstancesError();

/// Parse the variant matching the response status code.
factory AiSearchFetchInstancesError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => AiSearchFetchInstancesError400.parse(response),
  404 => AiSearchFetchInstancesError404.parse(response),
  _ => AiSearchFetchInstancesError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class AiSearchFetchInstancesError400 extends AiSearchFetchInstancesError {const AiSearchFetchInstancesError400(this.data);

factory AiSearchFetchInstancesError400.parse(ApiResponse response) { return AiSearchFetchInstancesError400(AiSearchFetchInstancesResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchFetchInstancesResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchInstancesError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesError400($data)'; } 
 }
/// The `404` response.
@immutable final class AiSearchFetchInstancesError404 extends AiSearchFetchInstancesError {const AiSearchFetchInstancesError404(this.data);

factory AiSearchFetchInstancesError404.parse(ApiResponse response) { return AiSearchFetchInstancesError404(AiSearchFetchInstancesResponse404.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final AiSearchFetchInstancesResponse404 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchInstancesError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'AiSearchFetchInstancesError404($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class AiSearchFetchInstancesError$Unknown extends AiSearchFetchInstancesError {const AiSearchFetchInstancesError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is AiSearchFetchInstancesError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'AiSearchFetchInstancesError.unknown($statusCode)'; } 
 }
