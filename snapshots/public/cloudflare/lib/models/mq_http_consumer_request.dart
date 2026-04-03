// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_http_consumer_request_settings.dart';import 'mq_queue_name.dart';@immutable final class MqHttpConsumerRequest {const MqHttpConsumerRequest({required this.type, this.deadLetterQueue, this.settings, });

factory MqHttpConsumerRequest.fromJson(Map<String, dynamic> json) { return MqHttpConsumerRequest(
  deadLetterQueue: json['dead_letter_queue'] != null ? MqQueueName.fromJson(json['dead_letter_queue'] as String) : null,
  settings: json['settings'] != null ? MqHttpConsumerRequestSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

final MqQueueName? deadLetterQueue;

final MqHttpConsumerRequestSettings? settings;

final String type;

Map<String, dynamic> toJson() { return {
  if (deadLetterQueue != null) 'dead_letter_queue': deadLetterQueue?.toJson(),
  if (settings != null) 'settings': settings?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
MqHttpConsumerRequest copyWith({MqQueueName Function()? deadLetterQueue, MqHttpConsumerRequestSettings Function()? settings, String? type, }) { return MqHttpConsumerRequest(
  deadLetterQueue: deadLetterQueue != null ? deadLetterQueue() : this.deadLetterQueue,
  settings: settings != null ? settings() : this.settings,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqHttpConsumerRequest &&
          deadLetterQueue == other.deadLetterQueue &&
          settings == other.settings &&
          type == other.type; } 
@override int get hashCode { return Object.hash(deadLetterQueue, settings, type); } 
@override String toString() { return 'MqHttpConsumerRequest(deadLetterQueue: $deadLetterQueue, settings: $settings, type: $type)'; } 
 }
