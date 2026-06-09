// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_nova3_internal_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/nova-3-internal`.
sealed class WorkersAiPostWebsocketRunCfDeepgramNova3InternalError {const WorkersAiPostWebsocketRunCfDeepgramNova3InternalError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramNova3InternalError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramNova3InternalError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101 extends WorkersAiPostWebsocketRunCfDeepgramNova3InternalError {const WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101();

factory WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3InternalError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400 extends WorkersAiPostWebsocketRunCfDeepgramNova3InternalError {const WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400(WorkersAiPostWebsocketRunCfDeepgramNova3InternalResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramNova3InternalResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3InternalError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3InternalError$Unknown extends WorkersAiPostWebsocketRunCfDeepgramNova3InternalError {const WorkersAiPostWebsocketRunCfDeepgramNova3InternalError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramNova3InternalError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3InternalError.unknown($statusCode)'; } 
 }
