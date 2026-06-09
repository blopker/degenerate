// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_aura2_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/aura-2`.
sealed class WorkersAiPostWebsocketRunCfDeepgramAura2Error {const WorkersAiPostWebsocketRunCfDeepgramAura2Error();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramAura2Error.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramAura2Error101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramAura2Error400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramAura2Error$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2Error101 extends WorkersAiPostWebsocketRunCfDeepgramAura2Error {const WorkersAiPostWebsocketRunCfDeepgramAura2Error101();

factory WorkersAiPostWebsocketRunCfDeepgramAura2Error101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramAura2Error101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramAura2Error101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramAura2Error101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2Error101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2Error400 extends WorkersAiPostWebsocketRunCfDeepgramAura2Error {const WorkersAiPostWebsocketRunCfDeepgramAura2Error400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramAura2Error400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramAura2Error400(WorkersAiPostWebsocketRunCfDeepgramAura2Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramAura2Response400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2Error400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2Error400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramAura2Error$Unknown extends WorkersAiPostWebsocketRunCfDeepgramAura2Error {const WorkersAiPostWebsocketRunCfDeepgramAura2Error$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramAura2Error$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramAura2Error.unknown($statusCode)'; } 
 }
