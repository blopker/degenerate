// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise.dart';import 'integration_installation_request_account.dart';import 'simple_user.dart';/// Request to install an integration on a target
@immutable final class IntegrationInstallationRequest {const IntegrationInstallationRequest({required this.id, required this.account, required this.requester, required this.createdAt, this.nodeId, });

factory IntegrationInstallationRequest.fromJson(Map<String, dynamic> json) { return IntegrationInstallationRequest(
  id: (json['id'] as num).toInt(),
  nodeId: json['node_id'] as String?,
  account: OneOf2.parse(json['account'], fromA: (v) => SimpleUser.fromJson(v as Map<String, dynamic>), fromB: (v) => Enterprise.fromJson(v as Map<String, dynamic>),),
  requester: SimpleUser.fromJson(json['requester'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['created_at'] as String),
); }

/// Unique identifier of the request installation.
final int id;

final String? nodeId;

final IntegrationInstallationRequestAccount account;

final SimpleUser requester;

final DateTime createdAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'node_id': ?nodeId,
  'account': account.toJson(),
  'requester': requester.toJson(),
  'created_at': createdAt.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('account') &&
      json.containsKey('requester') &&
      json.containsKey('created_at') && json['created_at'] is String; } 
IntegrationInstallationRequest copyWith({int? id, String Function()? nodeId, IntegrationInstallationRequestAccount? account, SimpleUser? requester, DateTime? createdAt, }) { return IntegrationInstallationRequest(
  id: id ?? this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  account: account ?? this.account,
  requester: requester ?? this.requester,
  createdAt: createdAt ?? this.createdAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntegrationInstallationRequest &&
          id == other.id &&
          nodeId == other.nodeId &&
          account == other.account &&
          requester == other.requester &&
          createdAt == other.createdAt; } 
@override int get hashCode { return Object.hash(id, nodeId, account, requester, createdAt); } 
@override String toString() { return 'IntegrationInstallationRequest(id: $id, nodeId: $nodeId, account: $account, requester: $requester, createdAt: $createdAt)'; } 
 }
