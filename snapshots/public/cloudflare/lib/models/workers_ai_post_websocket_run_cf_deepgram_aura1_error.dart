// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura1_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura-1`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAura1Error {const WorkersAiPostWebsocketRunCfDeepgramAura1Error();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAura1Error.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAura1Error101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAura1Error400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAura1Error$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1Error101 extends WorkersAiPostWebsocketRunCfDeepgramAura1Error {const WorkersAiPostWebsocketRunCfDeepgramAura1Error101();

factory WorkersAiPostWebsocketRunCfDeepgramAura1Error101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAura1Error101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAura1Error101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAura1Error101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1Error101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1Error400 extends WorkersAiPostWebsocketRunCfDeepgramAura1Error {const WorkersAiPostWebsocketRunCfDeepgramAura1Error400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAura1Error400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAura1Error400(WorkersAiPostWebsocketRunCfDeepgramAura1Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAura1Response400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura1Error400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1Error400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura1Error$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAura1Error {const WorkersAiPostWebsocketRunCfDeepgramAura1Error$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura1Error$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura1Error.unknown($statusCode)'; } 
 }
