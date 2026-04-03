// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_queue_message.dart';import 'mq_queue_message_json.dart';import 'mq_queue_message_text.dart';@immutable final class MqQueueBatch {const MqQueueBatch({this.delaySeconds, this.messages, });

factory MqQueueBatch.fromJson(Map<String, dynamic> json) { return MqQueueBatch(
  delaySeconds: json['delay_seconds'] != null ? (json['delay_seconds'] as num).toDouble() : null,
  messages: (json['messages'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => MqQueueMessageText.fromJson(v as Map<String, dynamic>), fromB: (v) => MqQueueMessageJson.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The number of seconds to wait for attempting to deliver this batch to consumers
final double? delaySeconds;

final List<MqQueueMessage>? messages;

Map<String, dynamic> toJson() { return {
  'delay_seconds': ?delaySeconds,
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'delay_seconds', 'messages'}.contains(key)); } 
MqQueueBatch copyWith({double Function()? delaySeconds, List<MqQueueMessage> Function()? messages, }) { return MqQueueBatch(
  delaySeconds: delaySeconds != null ? delaySeconds() : this.delaySeconds,
  messages: messages != null ? messages() : this.messages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqQueueBatch &&
          delaySeconds == other.delaySeconds &&
          listEquals(messages, other.messages); } 
@override int get hashCode { return Object.hash(delaySeconds, Object.hashAll(messages ?? const [])); } 
@override String toString() { return 'MqQueueBatch(delaySeconds: $delaySeconds, messages: $messages)'; } 
 }
