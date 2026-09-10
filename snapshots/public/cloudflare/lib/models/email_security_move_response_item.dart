// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityMoveResponseItem {const EmailSecurityMoveResponseItem({required this.completedTimestamp, required this.itemCount, required this.success, this.destination = const Omittable.absent(), this.messageId = const Omittable.absent(), this.operation = const Omittable.absent(), this.recipient = const Omittable.absent(), this.status = const Omittable.absent(), });

factory EmailSecurityMoveResponseItem.fromJson(Map<String, dynamic> json) { return EmailSecurityMoveResponseItem(
  completedTimestamp: DateTime.parse(json['completed_timestamp'] as String),
  destination: json.containsKey('destination') ? Omittable(json['destination'] as String?) : const Omittable.absent(),
  itemCount: (json['item_count'] as num).toInt(),
  messageId: json.containsKey('message_id') ? Omittable(json['message_id'] as String?) : const Omittable.absent(),
  operation: json.containsKey('operation') ? Omittable(json['operation'] as String?) : const Omittable.absent(),
  recipient: json.containsKey('recipient') ? Omittable(json['recipient'] as String?) : const Omittable.absent(),
  status: json.containsKey('status') ? Omittable(json['status'] as String?) : const Omittable.absent(),
  success: json['success'] as bool,
); }

final DateTime completedTimestamp;

final Omittable<String?> destination;

final int itemCount;

final Omittable<String?> messageId;

final Omittable<String?> operation;

final Omittable<String?> recipient;

final Omittable<String?> status;

final bool success;

Map<String, dynamic> toJson() { return {
  'completed_timestamp': completedTimestamp.toIso8601String(),
  if (destination.isPresent) 'destination': destination.value,
  'item_count': itemCount,
  if (messageId.isPresent) 'message_id': messageId.value,
  if (operation.isPresent) 'operation': operation.value,
  if (recipient.isPresent) 'recipient': recipient.value,
  if (status.isPresent) 'status': status.value,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('completed_timestamp') && json['completed_timestamp'] is String &&
      json.containsKey('item_count') && json['item_count'] is num &&
      json.containsKey('success') && json['success'] is bool; } 
EmailSecurityMoveResponseItem copyWith({DateTime? completedTimestamp, Omittable<String?>? destination, int? itemCount, Omittable<String?>? messageId, Omittable<String?>? operation, Omittable<String?>? recipient, Omittable<String?>? status, bool? success, }) { return EmailSecurityMoveResponseItem(
  completedTimestamp: completedTimestamp ?? this.completedTimestamp,
  destination: destination ?? this.destination,
  itemCount: itemCount ?? this.itemCount,
  messageId: messageId ?? this.messageId,
  operation: operation ?? this.operation,
  recipient: recipient ?? this.recipient,
  status: status ?? this.status,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityMoveResponseItem &&
          completedTimestamp == other.completedTimestamp &&
          destination == other.destination &&
          itemCount == other.itemCount &&
          messageId == other.messageId &&
          operation == other.operation &&
          recipient == other.recipient &&
          status == other.status &&
          success == other.success; } 
@override int get hashCode { return Object.hash(completedTimestamp, destination, itemCount, messageId, operation, recipient, status, success); } 
@override String toString() { return 'EmailSecurityMoveResponseItem(completedTimestamp: $completedTimestamp, destination: $destination, itemCount: $itemCount, messageId: $messageId, operation: $operation, recipient: $recipient, status: $status, success: $success)'; } 
 }
