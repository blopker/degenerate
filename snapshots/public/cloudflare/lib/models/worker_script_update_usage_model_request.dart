// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_usage_model.dart';import 'workers_user_limits.dart';@immutable final class WorkerScriptUpdateUsageModelRequest {const WorkerScriptUpdateUsageModelRequest({this.usageModel, this.userLimits = const Omittable.absent(), });

factory WorkerScriptUpdateUsageModelRequest.fromJson(Map<String, dynamic> json) { return WorkerScriptUpdateUsageModelRequest(
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
  userLimits: json.containsKey('user_limits') ? Omittable(json['user_limits'] != null ? WorkersUserLimits.fromJson(json['user_limits'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Usage model for the Worker invocations.
final WorkersUsageModel? usageModel;

final Omittable<WorkersUserLimits?> userLimits;

Map<String, dynamic> toJson() { return {
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
  if (userLimits.isPresent) 'user_limits': userLimits.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_model', 'user_limits'}.contains(key)); } 
WorkerScriptUpdateUsageModelRequest copyWith({WorkersUsageModel? Function()? usageModel, Omittable<WorkersUserLimits?>? userLimits, }) { return WorkerScriptUpdateUsageModelRequest(
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  userLimits: userLimits ?? this.userLimits,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkerScriptUpdateUsageModelRequest &&
          usageModel == other.usageModel &&
          userLimits == other.userLimits; } 
@override int get hashCode { return Object.hash(usageModel, userLimits); } 
@override String toString() { return 'WorkerScriptUpdateUsageModelRequest(usageModel: $usageModel, userLimits: $userLimits)'; } 
 }
