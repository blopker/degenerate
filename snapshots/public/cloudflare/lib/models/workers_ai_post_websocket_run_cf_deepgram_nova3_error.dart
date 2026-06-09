// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_deepgram_nova3_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/deepgram/nova-3`.
sealed class WorkersAiPostWebsocketRunCfDeepgramNova3Error {const WorkersAiPostWebsocketRunCfDeepgramNova3Error();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfDeepgramNova3Error.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfDeepgramNova3Error101.parse(response),
  400 => WorkersAiPostWebsocketRunCfDeepgramNova3Error400.parse(response),
  _ => WorkersAiPostWebsocketRunCfDeepgramNova3Error$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3Error101 extends WorkersAiPostWebsocketRunCfDeepgramNova3Error {const WorkersAiPostWebsocketRunCfDeepgramNova3Error101();

factory WorkersAiPostWebsocketRunCfDeepgramNova3Error101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfDeepgramNova3Error101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfDeepgramNova3Error101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfDeepgramNova3Error101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3Error101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3Error400 extends WorkersAiPostWebsocketRunCfDeepgramNova3Error {const WorkersAiPostWebsocketRunCfDeepgramNova3Error400(this.data);

factory WorkersAiPostWebsocketRunCfDeepgramNova3Error400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfDeepgramNova3Error400(WorkersAiPostWebsocketRunCfDeepgramNova3Response400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfDeepgramNova3Response400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramNova3Error400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3Error400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfDeepgramNova3Error$Unknown extends WorkersAiPostWebsocketRunCfDeepgramNova3Error {const WorkersAiPostWebsocketRunCfDeepgramNova3Error$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfDeepgramNova3Error$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfDeepgramNova3Error.unknown($statusCode)'; } 
 }
