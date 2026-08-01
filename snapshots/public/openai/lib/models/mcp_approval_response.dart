// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A response to an MCP approval request.
/// 
@immutable final class McpApprovalResponse {const McpApprovalResponse({required this.type, required this.approvalRequestId, required this.approve, this.id = const Omittable.absent(), this.reason = const Omittable.absent(), });

factory McpApprovalResponse.fromJson(Map<String, dynamic> json) { return McpApprovalResponse(
  type: json['type'] as String,
  id: json.containsKey('id') ? Omittable(json['id'] as String?) : const Omittable.absent(),
  approvalRequestId: json['approval_request_id'] as String,
  approve: json['approve'] as bool,
  reason: json.containsKey('reason') ? Omittable(json['reason'] as String?) : const Omittable.absent(),
); }

/// The type of the item. Always `mcp_approval_response`.
/// 
final String type;

/// The unique ID of the approval response
/// 
final Omittable<String?> id;

/// The ID of the approval request being answered.
/// 
final String approvalRequestId;

/// Whether the request was approved.
/// 
final bool approve;

/// Optional reason for the decision.
/// 
final Omittable<String?> reason;

Map<String, dynamic> toJson() { return {
  'type': type,
  if (id.isPresent) 'id': id.value,
  'approval_request_id': approvalRequestId,
  'approve': approve,
  if (reason.isPresent) 'reason': reason.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String &&
      json.containsKey('approval_request_id') && json['approval_request_id'] is String &&
      json.containsKey('approve') && json['approve'] is bool; } 
McpApprovalResponse copyWith({String? type, Omittable<String?>? id, String? approvalRequestId, bool? approve, Omittable<String?>? reason, }) { return McpApprovalResponse(
  type: type ?? this.type,
  id: id ?? this.id,
  approvalRequestId: approvalRequestId ?? this.approvalRequestId,
  approve: approve ?? this.approve,
  reason: reason ?? this.reason,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McpApprovalResponse &&
          type == other.type &&
          id == other.id &&
          approvalRequestId == other.approvalRequestId &&
          approve == other.approve &&
          reason == other.reason; } 
@override int get hashCode { return Object.hash(type, id, approvalRequestId, approve, reason); } 
@override String toString() { return 'McpApprovalResponse(type: $type, id: $id, approvalRequestId: $approvalRequestId, approve: $approve, reason: $reason)'; } 
 }
