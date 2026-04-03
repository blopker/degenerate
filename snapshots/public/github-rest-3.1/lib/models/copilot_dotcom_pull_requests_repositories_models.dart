// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CopilotDotcomPullRequestsRepositoriesModels {const CopilotDotcomPullRequestsRepositoriesModels({this.name, this.isCustomModel, this.customModelTrainingDate, this.totalPrSummariesCreated, this.totalEngagedUsers, });

factory CopilotDotcomPullRequestsRepositoriesModels.fromJson(Map<String, dynamic> json) { return CopilotDotcomPullRequestsRepositoriesModels(
  name: json['name'] as String?,
  isCustomModel: json['is_custom_model'] as bool?,
  customModelTrainingDate: json['custom_model_training_date'] as String?,
  totalPrSummariesCreated: json['total_pr_summaries_created'] != null ? (json['total_pr_summaries_created'] as num).toInt() : null,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
); }

/// Name of the model used for Copilot pull request summaries. If the default model is used will appear as 'default'.
final String? name;

/// Indicates whether a model is custom or default.
final bool? isCustomModel;

/// The training date for the custom model.
final String? customModelTrainingDate;

/// The number of pull request summaries generated using Copilot for Pull Requests in the given repository.
final int? totalPrSummariesCreated;

/// The number of users who generated pull request summaries using Copilot for Pull Requests in the given repository and model.
final int? totalEngagedUsers;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'is_custom_model': ?isCustomModel,
  'custom_model_training_date': ?customModelTrainingDate,
  'total_pr_summaries_created': ?totalPrSummariesCreated,
  'total_engaged_users': ?totalEngagedUsers,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'is_custom_model', 'custom_model_training_date', 'total_pr_summaries_created', 'total_engaged_users'}.contains(key)); } 
CopilotDotcomPullRequestsRepositoriesModels copyWith({String Function()? name, bool Function()? isCustomModel, String? Function()? customModelTrainingDate, int Function()? totalPrSummariesCreated, int Function()? totalEngagedUsers, }) { return CopilotDotcomPullRequestsRepositoriesModels(
  name: name != null ? name() : this.name,
  isCustomModel: isCustomModel != null ? isCustomModel() : this.isCustomModel,
  customModelTrainingDate: customModelTrainingDate != null ? customModelTrainingDate() : this.customModelTrainingDate,
  totalPrSummariesCreated: totalPrSummariesCreated != null ? totalPrSummariesCreated() : this.totalPrSummariesCreated,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotDotcomPullRequestsRepositoriesModels &&
          name == other.name &&
          isCustomModel == other.isCustomModel &&
          customModelTrainingDate == other.customModelTrainingDate &&
          totalPrSummariesCreated == other.totalPrSummariesCreated &&
          totalEngagedUsers == other.totalEngagedUsers; } 
@override int get hashCode { return Object.hash(name, isCustomModel, customModelTrainingDate, totalPrSummariesCreated, totalEngagedUsers); } 
@override String toString() { return 'CopilotDotcomPullRequestsRepositoriesModels(name: $name, isCustomModel: $isCustomModel, customModelTrainingDate: $customModelTrainingDate, totalPrSummariesCreated: $totalPrSummariesCreated, totalEngagedUsers: $totalEngagedUsers)'; } 
 }
