// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_sven_test_pipe_http_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/sven/test-pipe-http`.
sealed class WorkersAiPostWebsocketRunCfSvenTestPipeHttpError {const WorkersAiPostWebsocketRunCfSvenTestPipeHttpError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfSvenTestPipeHttpError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfSvenTestPipeHttpError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101 extends WorkersAiPostWebsocketRunCfSvenTestPipeHttpError {const WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101();

factory WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfSvenTestPipeHttpError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400 extends WorkersAiPostWebsocketRunCfSvenTestPipeHttpError {const WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400(this.data);

factory WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400(WorkersAiPostWebsocketRunCfSvenTestPipeHttpResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfSvenTestPipeHttpResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfSvenTestPipeHttpError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfSvenTestPipeHttpError$Unknown extends WorkersAiPostWebsocketRunCfSvenTestPipeHttpError {const WorkersAiPostWebsocketRunCfSvenTestPipeHttpError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfSvenTestPipeHttpError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfSvenTestPipeHttpError.unknown($statusCode)'; } 
 }
