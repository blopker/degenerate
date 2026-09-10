// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_usage_model.dart';import 'workers_user_limits.dart';@immutable final class WorkersUsageModelResponseResult {const WorkersUsageModelResponseResult({this.usageModel, this.userLimits = const Omittable.absent(), });

factory WorkersUsageModelResponseResult.fromJson(Map<String, dynamic> json) { return WorkersUsageModelResponseResult(
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
  userLimits: json.containsKey('user_limits') ? Omittable(json['user_limits'] != null ? WorkersUserLimits.fromJson(json['user_limits'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final WorkersUsageModel? usageModel;

final Omittable<WorkersUserLimits?> userLimits;

Map<String, dynamic> toJson() { return {
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
  if (userLimits.isPresent) 'user_limits': userLimits.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_model', 'user_limits'}.contains(key)); } 
WorkersUsageModelResponseResult copyWith({WorkersUsageModel? Function()? usageModel, Omittable<WorkersUserLimits?>? userLimits, }) { return WorkersUsageModelResponseResult(
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  userLimits: userLimits ?? this.userLimits,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersUsageModelResponseResult &&
          usageModel == other.usageModel &&
          userLimits == other.userLimits; } 
@override int get hashCode { return Object.hash(usageModel, userLimits); } 
@override String toString() { return 'WorkersUsageModelResponseResult(usageModel: $usageModel, userLimits: $userLimits)'; } 
 }
