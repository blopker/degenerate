// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'wor_batch_create_workflow_instance_request_instance_retention.dart';@immutable final class WorBatchCreateWorkflowInstanceRequest {const WorBatchCreateWorkflowInstanceRequest({this.instanceId, this.instanceRetention, this.params, });

factory WorBatchCreateWorkflowInstanceRequest.fromJson(Map<String, dynamic> json) { return WorBatchCreateWorkflowInstanceRequest(
  instanceId: json['instance_id'] as String?,
  instanceRetention: json['instance_retention'] != null ? WorBatchCreateWorkflowInstanceRequestInstanceRetention.fromJson(json['instance_retention'] as Map<String, dynamic>) : null,
  params: json['params'] as Map<String, dynamic>?,
); }

final String? instanceId;

final WorBatchCreateWorkflowInstanceRequestInstanceRetention? instanceRetention;

final Map<String,dynamic>? params;

Map<String, dynamic> toJson() { return {
  'instance_id': ?instanceId,
  if (instanceRetention != null) 'instance_retention': instanceRetention?.toJson(),
  'params': ?params,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'instance_id', 'instance_retention', 'params'}.contains(key)); } 
WorBatchCreateWorkflowInstanceRequest copyWith({String Function()? instanceId, WorBatchCreateWorkflowInstanceRequestInstanceRetention Function()? instanceRetention, Map<String, dynamic> Function()? params, }) { return WorBatchCreateWorkflowInstanceRequest(
  instanceId: instanceId != null ? instanceId() : this.instanceId,
  instanceRetention: instanceRetention != null ? instanceRetention() : this.instanceRetention,
  params: params != null ? params() : this.params,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorBatchCreateWorkflowInstanceRequest &&
          instanceId == other.instanceId &&
          instanceRetention == other.instanceRetention &&
          params == other.params; } 
@override int get hashCode { return Object.hash(instanceId, instanceRetention, params); } 
@override String toString() { return 'WorBatchCreateWorkflowInstanceRequest(instanceId: $instanceId, instanceRetention: $instanceRetention, params: $params)'; } 
 }
