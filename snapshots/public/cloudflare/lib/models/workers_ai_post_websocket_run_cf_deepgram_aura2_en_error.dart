// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura2_en_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura-2-en`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAura2EnError {const WorkersAiPostWebsocketRunCfDeepgramAura2EnError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAura2EnError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAura2EnError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAura2EnError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAura2EnError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EnError101 extends WorkersAiPostWebsocketRunCfDeepgramAura2EnError {const WorkersAiPostWebsocketRunCfDeepgramAura2EnError101();

factory WorkersAiPostWebsocketRunCfDeepgramAura2EnError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAura2EnError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAura2EnError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAura2EnError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EnError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EnError400 extends WorkersAiPostWebsocketRunCfDeepgramAura2EnError {const WorkersAiPostWebsocketRunCfDeepgramAura2EnError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAura2EnError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAura2EnError400(WorkersAiPostWebsocketRunCfDeepgramAura2EnResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAura2EnResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2EnError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EnError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2EnError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAura2EnError {const WorkersAiPostWebsocketRunCfDeepgramAura2EnError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2EnError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2EnError.unknown($statusCode)'; } 
 }
