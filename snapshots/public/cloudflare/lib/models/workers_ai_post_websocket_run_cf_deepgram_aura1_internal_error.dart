// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura1_internal_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura-1-internal`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAura1InternalError {const WorkersAiPostWebsocketRunCfDeepgramAura1InternalError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAura1InternalError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAura1InternalError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101 extends WorkersAiPostWebsocketRunCfDeepgramAura1InternalError {const WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101();

factory WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1InternalError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400 extends WorkersAiPostWebsocketRunCfDeepgramAura1InternalError {const WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400(WorkersAiPostWebsocketRunCfDeepgramAura1InternalResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAura1InternalResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1InternalError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1InternalError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAura1InternalError {const WorkersAiPostWebsocketRunCfDeepgramAura1InternalError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura1InternalError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1InternalError.unknown($statusCode)'; } 
 }
