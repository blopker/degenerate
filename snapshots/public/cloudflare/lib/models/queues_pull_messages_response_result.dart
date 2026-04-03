// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_queue_pull_batch2.dart';@immutable final class QueuesPullMessagesResponseResult {const QueuesPullMessagesResponseResult({this.messageBacklogCount, this.messages, });

factory QueuesPullMessagesResponseResult.fromJson(Map<String, dynamic> json) { return QueuesPullMessagesResponseResult(
  messageBacklogCount: json['message_backlog_count'] != null ? (json['message_backlog_count'] as num).toDouble() : null,
  messages: (json['messages'] as List<dynamic>?)?.map((e) => MqQueuePullBatch2.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The number of unacknowledged messages in the queue
final double? messageBacklogCount;

final List<MqQueuePullBatch2>? messages;

Map<String, dynamic> toJson() { return {
  'message_backlog_count': ?messageBacklogCount,
  if (messages != null) 'messages': messages?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'message_backlog_count', 'messages'}.contains(key)); } 
QueuesPullMessagesResponseResult copyWith({double Function()? messageBacklogCount, List<MqQueuePullBatch2> Function()? messages, }) { return QueuesPullMessagesResponseResult(
  messageBacklogCount: messageBacklogCount != null ? messageBacklogCount() : this.messageBacklogCount,
  messages: messages != null ? messages() : this.messages,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesPullMessagesResponseResult &&
          messageBacklogCount == other.messageBacklogCount &&
          listEquals(messages, other.messages); } 
@override int get hashCode { return Object.hash(messageBacklogCount, Object.hashAll(messages ?? const [])); } 
@override String toString() { return 'QueuesPullMessagesResponseResult(messageBacklogCount: $messageBacklogCount, messages: $messages)'; } 
 }
