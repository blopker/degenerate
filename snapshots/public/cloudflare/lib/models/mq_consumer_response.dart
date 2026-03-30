// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mq_http_consumer_response.dart';import 'mq_worker_consumer_response.dart';/// Response body representing a consumer
sealed class MqConsumerResponse {const MqConsumerResponse();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory MqConsumerResponse.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'http_pull' => MqConsumerResponseHttpPull.fromJson(json),
  'worker' => MqConsumerResponseWorker.fromJson(json),
  _ => MqConsumerResponse$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is MqConsumerResponse$Unknown; } 
 }
final class MqConsumerResponseHttpPull extends MqConsumerResponse {const MqConsumerResponseHttpPull(this.mqHttpConsumerResponse);

factory MqConsumerResponseHttpPull.fromJson(Map<String, dynamic> json) { return MqConsumerResponseHttpPull(MqHttpConsumerResponse.fromJson(json)); }

final MqHttpConsumerResponse mqHttpConsumerResponse;

@override String get type { return 'http_pull'; } 
@override Map<String, dynamic> toJson() { return {...mqHttpConsumerResponse.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqConsumerResponseHttpPull && mqHttpConsumerResponse == other.mqHttpConsumerResponse; } 
@override int get hashCode { return mqHttpConsumerResponse.hashCode; } 
@override String toString() { return 'MqConsumerResponseHttpPull(mqHttpConsumerResponse: $mqHttpConsumerResponse)'; } 
 }
final class MqConsumerResponseWorker extends MqConsumerResponse {const MqConsumerResponseWorker(this.mqWorkerConsumerResponse);

factory MqConsumerResponseWorker.fromJson(Map<String, dynamic> json) { return MqConsumerResponseWorker(MqWorkerConsumerResponse.fromJson(json)); }

final MqWorkerConsumerResponse mqWorkerConsumerResponse;

@override String get type { return 'worker'; } 
@override Map<String, dynamic> toJson() { return {...mqWorkerConsumerResponse.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqConsumerResponseWorker && mqWorkerConsumerResponse == other.mqWorkerConsumerResponse; } 
@override int get hashCode { return mqWorkerConsumerResponse.hashCode; } 
@override String toString() { return 'MqConsumerResponseWorker(mqWorkerConsumerResponse: $mqWorkerConsumerResponse)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class MqConsumerResponse$Unknown extends MqConsumerResponse {const MqConsumerResponse$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqConsumerResponse$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'MqConsumerResponse.unknown($json)'; } 
 }
