// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_flux_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/flux`.
sealed class WorkersAiPostWebsocketRunCfDeepgramFluxError {const WorkersAiPostWebsocketRunCfDeepgramFluxError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramFluxError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramFluxError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramFluxError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramFluxError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramFluxError101 extends WorkersAiPostWebsocketRunCfDeepgramFluxError {const WorkersAiPostWebsocketRunCfDeepgramFluxError101();

factory WorkersAiPostWebsocketRunCfDeepgramFluxError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramFluxError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramFluxError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramFluxError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramFluxError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramFluxError400 extends WorkersAiPostWebsocketRunCfDeepgramFluxError {const WorkersAiPostWebsocketRunCfDeepgramFluxError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramFluxError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramFluxError400(WorkersAiPostWebsocketRunCfDeepgramFluxResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramFluxResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramFluxError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramFluxError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramFluxError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramFluxError {const WorkersAiPostWebsocketRunCfDeepgramFluxError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramFluxError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramFluxError.unknown($statusCode)'; } 
 }
