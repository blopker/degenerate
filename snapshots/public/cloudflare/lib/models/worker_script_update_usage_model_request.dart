// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_usage_model.dart';import 'workers_user_limits.dart';@immutable final class WorkerScriptUpdateUsageModelRequest {const WorkerScriptUpdateUsageModelRequest({this.usageModel, this.userLimits, });

factory WorkerScriptUpdateUsageModelRequest.fromJson(Map<String, dynamic> json) { return WorkerScriptUpdateUsageModelRequest(
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
  userLimits: json['user_limits'] != null ? WorkersUserLimits.fromJson(json['user_limits'] as Map<String, dynamic>) : null,
); }

/// Usage model for the Worker invocations.
final WorkersUsageModel? usageModel;

final WorkersUserLimits? userLimits;

Map<String, dynamic> toJson() { return {
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
  if (userLimits != null) 'user_limits': userLimits?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_model', 'user_limits'}.contains(key)); } 
WorkerScriptUpdateUsageModelRequest copyWith({WorkersUsageModel Function()? usageModel, WorkersUserLimits Function()? userLimits, }) { return WorkerScriptUpdateUsageModelRequest(
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  userLimits: userLimits != null ? userLimits() : this.userLimits,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptUpdateUsageModelRequest &&
          usageModel == other.usageModel &&
          userLimits == other.userLimits; } 
@override int get hashCode { return Object.hash(usageModel, userLimits); } 
@override String toString() { return 'WorkerScriptUpdateUsageModelRequest(usageModel: $usageModel, userLimits: $userLimits)'; } 
 }
