// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecurityMoveResponseItem {const EmailSecurityMoveResponseItem({required this.completedTimestamp, this.destination, required this.itemCount, this.messageId, this.operation, this.recipient, this.status, required this.success, });

factory EmailSecurityMoveResponseItem.fromJson(Map<String, dynamic> json) { return EmailSecurityMoveResponseItem(
  completedTimestamp: DateTime.parse(json['completed_timestamp'] as String),
  destination: json['destination'] as String?,
  itemCount: (json['item_count'] as num).toInt(),
  messageId: json['message_id'] as String?,
  operation: json['operation'] as String?,
  recipient: json['recipient'] as String?,
  status: json['status'] as String?,
  success: json['success'] as bool,
); }

final DateTime completedTimestamp;

final String? destination;

final int itemCount;

final String? messageId;

final String? operation;

final String? recipient;

final String? status;

final bool success;

Map<String, dynamic> toJson() { return {
  'completed_timestamp': completedTimestamp.toIso8601String(),
  'destination': ?destination,
  'item_count': itemCount,
  'message_id': ?messageId,
  'operation': ?operation,
  'recipient': ?recipient,
  'status': ?status,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('completed_timestamp') && json['completed_timestamp'] is String &&
      json.containsKey('item_count') && json['item_count'] is num &&
      json.containsKey('success') && json['success'] is bool; } 
EmailSecurityMoveResponseItem copyWith({DateTime? completedTimestamp, String? Function()? destination, int? itemCount, String? Function()? messageId, String? Function()? operation, String? Function()? recipient, String? Function()? status, bool? success, }) { return EmailSecurityMoveResponseItem(
  completedTimestamp: completedTimestamp ?? this.completedTimestamp,
  destination: destination != null ? destination() : this.destination,
  itemCount: itemCount ?? this.itemCount,
  messageId: messageId != null ? messageId() : this.messageId,
  operation: operation != null ? operation() : this.operation,
  recipient: recipient != null ? recipient() : this.recipient,
  status: status != null ? status() : this.status,
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
