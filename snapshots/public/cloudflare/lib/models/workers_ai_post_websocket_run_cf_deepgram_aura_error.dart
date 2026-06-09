// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAuraError {const WorkersAiPostWebsocketRunCfDeepgramAuraError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAuraError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAuraError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAuraError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAuraError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAuraError101 extends WorkersAiPostWebsocketRunCfDeepgramAuraError {const WorkersAiPostWebsocketRunCfDeepgramAuraError101();

factory WorkersAiPostWebsocketRunCfDeepgramAuraError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAuraError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAuraError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAuraError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAuraError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAuraError400 extends WorkersAiPostWebsocketRunCfDeepgramAuraError {const WorkersAiPostWebsocketRunCfDeepgramAuraError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAuraError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAuraError400(WorkersAiPostWebsocketRunCfDeepgramAuraResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAuraResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAuraError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAuraError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAuraError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAuraError {const WorkersAiPostWebsocketRunCfDeepgramAuraError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAuraError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAuraError.unknown($statusCode)'; } 
 }
