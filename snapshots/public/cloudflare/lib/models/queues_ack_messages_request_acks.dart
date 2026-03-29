// GENERATED CODE - DO NOT MODIFY BY HAND

import 'mq_lease_id.dart';final class QueuesAckMessagesRequestAcks {const QueuesAckMessagesRequestAcks({this.leaseId});

factory QueuesAckMessagesRequestAcks.fromJson(Map<String, dynamic> json) { return QueuesAckMessagesRequestAcks(
  leaseId: json['lease_id'] != null ? MqLeaseId.fromJson(json['lease_id'] as String) : null,
); }

/// An ID that represents an "in-flight" message that has been pulled from a Queue. You must hold on to this ID and use it to acknowledge this message.
final MqLeaseId? leaseId;

Map<String, dynamic> toJson() { return {
  if (leaseId != null) 'lease_id': leaseId?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
QueuesAckMessagesRequestAcks copyWith({MqLeaseId Function()? leaseId}) { return QueuesAckMessagesRequestAcks(
  leaseId: leaseId != null ? leaseId() : this.leaseId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is QueuesAckMessagesRequestAcks &&
          leaseId == other.leaseId; } 
@override int get hashCode { return leaseId.hashCode; } 
@override String toString() { return 'QueuesAckMessagesRequestAcks(leaseId: $leaseId)'; } 
 }
