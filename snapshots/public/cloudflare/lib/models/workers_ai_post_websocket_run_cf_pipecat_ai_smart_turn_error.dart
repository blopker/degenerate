// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_pipecat_ai_smart_turn_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/pipecat-ai/smart-turn-v2`.
sealed class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101 extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101();

factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400 extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400(this.data);

factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400(WorkersAiPostWebsocketRunCfPipecatAiSmartTurnResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfPipecatAiSmartTurnResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError$Unknown extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError.unknown($statusCode)'; } 
 }
