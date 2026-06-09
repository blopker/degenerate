// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_ai_post_websocket_run_cf_test_hello_world_cog_response400.dart';/// Error responses of `GET /accounts/{account_id}/ai/run/@cf/test/hello-world-cog`.
sealed class WorkersAiPostWebsocketRunCfTestHelloWorldCogError {const WorkersAiPostWebsocketRunCfTestHelloWorldCogError();

/// Parse the variant matching the response status code.
factory WorkersAiPostWebsocketRunCfTestHelloWorldCogError.parse(ApiResponse response) { return switch (response.statusCode) {
  101 => WorkersAiPostWebsocketRunCfTestHelloWorldCogError101.parse(response),
  400 => WorkersAiPostWebsocketRunCfTestHelloWorldCogError400.parse(response),
  _ => WorkersAiPostWebsocketRunCfTestHelloWorldCogError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `101` response.
@immutable final class WorkersAiPostWebsocketRunCfTestHelloWorldCogError101 extends WorkersAiPostWebsocketRunCfTestHelloWorldCogError {const WorkersAiPostWebsocketRunCfTestHelloWorldCogError101();

factory WorkersAiPostWebsocketRunCfTestHelloWorldCogError101.parse(ApiResponse _) { return const WorkersAiPostWebsocketRunCfTestHelloWorldCogError101(); }

@override bool operator ==(Object other) { return identical(this, other) || other is WorkersAiPostWebsocketRunCfTestHelloWorldCogError101; } 
@override int get hashCode { return (WorkersAiPostWebsocketRunCfTestHelloWorldCogError101).hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfTestHelloWorldCogError101()'; } 
 }
/// The `400` response.
@immutable final class WorkersAiPostWebsocketRunCfTestHelloWorldCogError400 extends WorkersAiPostWebsocketRunCfTestHelloWorldCogError {const WorkersAiPostWebsocketRunCfTestHelloWorldCogError400(this.data);

factory WorkersAiPostWebsocketRunCfTestHelloWorldCogError400.parse(ApiResponse response) { return WorkersAiPostWebsocketRunCfTestHelloWorldCogError400(WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final WorkersAiPostWebsocketRunCfTestHelloWorldCogResponse400 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfTestHelloWorldCogError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfTestHelloWorldCogError400($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class WorkersAiPostWebsocketRunCfTestHelloWorldCogError$Unknown extends WorkersAiPostWebsocketRunCfTestHelloWorldCogError {const WorkersAiPostWebsocketRunCfTestHelloWorldCogError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersAiPostWebsocketRunCfTestHelloWorldCogError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'WorkersAiPostWebsocketRunCfTestHelloWorldCogError.unknown($statusCode)'; } 
 }
