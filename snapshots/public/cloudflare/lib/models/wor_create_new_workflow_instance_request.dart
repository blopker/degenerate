// GENERATED CODE - DO NOT MODIFY BY HAND

import 'wor_create_new_workflow_instance_request_instance_retention.dart';final class WorCreateNewWorkflowInstanceRequest {const WorCreateNewWorkflowInstanceRequest({this.instanceId, this.instanceRetention, this.params, });

factory WorCreateNewWorkflowInstanceRequest.fromJson(Map<String, dynamic> json) { return WorCreateNewWorkflowInstanceRequest(
  instanceId: json['instance_id'] as String?,
  instanceRetention: json['instance_retention'] != null ? WorCreateNewWorkflowInstanceRequestInstanceRetention.fromJson(json['instance_retention'] as Map<String, dynamic>) : null,
  params: (json['params'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final String? instanceId;

final WorCreateNewWorkflowInstanceRequestInstanceRetention? instanceRetention;

final Map<String,dynamic>? params;

Map<String, dynamic> toJson() { return {
  'instance_id': ?instanceId,
  if (instanceRetention != null) 'instance_retention': instanceRetention?.toJson(),
  'params': ?params,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'instance_id', 'instance_retention', 'params'}.contains(key)); } 
WorCreateNewWorkflowInstanceRequest copyWith({String Function()? instanceId, WorCreateNewWorkflowInstanceRequestInstanceRetention Function()? instanceRetention, Map<String, dynamic> Function()? params, }) { return WorCreateNewWorkflowInstanceRequest(
  instanceId: instanceId != null ? instanceId() : this.instanceId,
  instanceRetention: instanceRetention != null ? instanceRetention() : this.instanceRetention,
  params: params != null ? params() : this.params,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorCreateNewWorkflowInstanceRequest &&
          instanceId == other.instanceId &&
          instanceRetention == other.instanceRetention &&
          params == other.params; } 
@override int get hashCode { return Object.hash(instanceId, instanceRetention, params); } 
@override String toString() { return 'WorCreateNewWorkflowInstanceRequest(instanceId: $instanceId, instanceRetention: $instanceRetention, params: $params)'; } 
 }
