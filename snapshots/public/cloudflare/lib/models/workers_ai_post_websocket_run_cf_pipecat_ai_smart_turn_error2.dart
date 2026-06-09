// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_pipecat_ai_smart_turn_response4002.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/pipecat-ai/smart-turn-v3`.
sealed class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2 {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101.parse(response),
  400 => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400.parse(response),
  _ => WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101 extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2 {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101();

factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400 extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2 {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400(this.data);

factory WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400(WorkersAiPostWebsocketRunCfPipecatAiSmartTurnResponse4002.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfPipecatAiSmartTurnResponse4002 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2$Unknown extends WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2 {const WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfPipecatAiSmartTurnError2.unknown($statusCode)'; } 
 }
