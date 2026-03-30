// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_usage_model.dart';import 'workers_user_limits.dart';final class WorkersUsageModelResponseResult {const WorkersUsageModelResponseResult({this.usageModel, this.userLimits, });

factory WorkersUsageModelResponseResult.fromJson(Map<String, dynamic> json) { return WorkersUsageModelResponseResult(
  usageModel: json['usage_model'] != null ? WorkersUsageModel.fromJson(json['usage_model'] as String) : null,
  userLimits: json['user_limits'] != null ? WorkersUserLimits.fromJson(json['user_limits'] as Map<String, dynamic>) : null,
); }

final WorkersUsageModel? usageModel;

final WorkersUserLimits? userLimits;

Map<String, dynamic> toJson() { return {
  if (usageModel != null) 'usage_model': usageModel?.toJson(),
  if (userLimits != null) 'user_limits': userLimits?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'usage_model', 'user_limits'}.contains(key)); } 
WorkersUsageModelResponseResult copyWith({WorkersUsageModel Function()? usageModel, WorkersUserLimits Function()? userLimits, }) { return WorkersUsageModelResponseResult(
  usageModel: usageModel != null ? usageModel() : this.usageModel,
  userLimits: userLimits != null ? userLimits() : this.userLimits,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersUsageModelResponseResult &&
          usageModel == other.usageModel &&
          userLimits == other.userLimits; } 
@override int get hashCode { return Object.hash(usageModel, userLimits); } 
@override String toString() { return 'WorkersUsageModelResponseResult(usageModel: $usageModel, userLimits: $userLimits)'; } 
 }
