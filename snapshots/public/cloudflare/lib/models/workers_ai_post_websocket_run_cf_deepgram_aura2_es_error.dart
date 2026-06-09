// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura2_es_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura-2-es`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAura2EsError {const WorkersAiPostWebsocketRunCfDeepgramAura2EsError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAura2EsError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAura2EsError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAura2EsError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAura2EsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EsError101 extends WorkersAiPostWebsocketRunCfDeepgramAura2EsError {const WorkersAiPostWebsocketRunCfDeepgramAura2EsError101();

factory WorkersAiPostWebsocketRunCfDeepgramAura2EsError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAura2EsError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAura2EsError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAura2EsError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EsError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EsError400 extends WorkersAiPostWebsocketRunCfDeepgramAura2EsError {const WorkersAiPostWebsocketRunCfDeepgramAura2EsError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAura2EsError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAura2EsError400(WorkersAiPostWebsocketRunCfDeepgramAura2EsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAura2EsResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2EsError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EsError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EsError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAura2EsError {const WorkersAiPostWebsocketRunCfDeepgramAura2EsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2EsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EsError.unknown($statusCode)'; } 
 }
