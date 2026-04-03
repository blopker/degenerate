// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_http_consumer_response_settings.dart';import 'mq_identifier.dart';import 'mq_queue_name.dart';@immutable final class MqHttpConsumerResponse {const MqHttpConsumerResponse({this.consumerId, this.createdOn, this.deadLetterQueue, this.queueName, this.settings, this.type, });

factory MqHttpConsumerResponse.fromJson(Map<String, dynamic> json) { return MqHttpConsumerResponse(
  consumerId: json['consumer_id'] != null ? MqIdentifier.fromJson(json['consumer_id'] as String) : null,
  createdOn: json['created_on'] != null ? DateTime.parse(json['created_on'] as String) : null,
  deadLetterQueue: json['dead_letter_queue'] as String?,
  queueName: json['queue_name'] != null ? MqQueueName.fromJson(json['queue_name'] as String) : null,
  settings: json['settings'] != null ? MqHttpConsumerResponseSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  type: json['type'] as String?,
); }

final MqIdentifier? consumerId;

final DateTime? createdOn;

/// Name of the dead letter queue, or empty string if not configured
final String? deadLetterQueue;

final MqQueueName? queueName;

final MqHttpConsumerResponseSettings? settings;

final String? type;

Map<String, dynamic> toJson() { return {
  if (consumerId != null) 'consumer_id': consumerId?.toJson(),
  if (createdOn != null) 'created_on': createdOn?.toIso8601String(),
  'dead_letter_queue': ?deadLetterQueue,
  if (queueName != null) 'queue_name': queueName?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'consumer_id', 'created_on', 'dead_letter_queue', 'queue_name', 'settings', 'type'}.contains(key)); } 
MqHttpConsumerResponse copyWith({MqIdentifier Function()? consumerId, DateTime Function()? createdOn, String Function()? deadLetterQueue, MqQueueName Function()? queueName, MqHttpConsumerResponseSettings Function()? settings, String Function()? type, }) { return MqHttpConsumerResponse(
  consumerId: consumerId != null ? consumerId() : this.consumerId,
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  deadLetterQueue: deadLetterQueue != null ? deadLetterQueue() : this.deadLetterQueue,
  queueName: queueName != null ? queueName() : this.queueName,
  settings: settings != null ? settings() : this.settings,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqHttpConsumerResponse &&
          consumerId == other.consumerId &&
          createdOn == other.createdOn &&
          deadLetterQueue == other.deadLetterQueue &&
          queueName == other.queueName &&
          settings == other.settings &&
          type == other.type; } 
@override int get hashCode { return Object.hash(consumerId, createdOn, deadLetterQueue, queueName, settings, type); } 
@override String toString() { return 'MqHttpConsumerResponse(consumerId: $consumerId, createdOn: $createdOn, deadLetterQueue: $deadLetterQueue, queueName: $queueName, settings: $settings, type: $type)'; } 
 }
