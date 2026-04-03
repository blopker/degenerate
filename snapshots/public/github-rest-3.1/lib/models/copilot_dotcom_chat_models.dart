// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CopilotDotcomChatModels {const CopilotDotcomChatModels({this.name, this.isCustomModel, this.customModelTrainingDate, this.totalEngagedUsers, this.totalChats, });

factory CopilotDotcomChatModels.fromJson(Map<String, dynamic> json) { return CopilotDotcomChatModels(
  name: json['name'] as String?,
  isCustomModel: json['is_custom_model'] as bool?,
  customModelTrainingDate: json['custom_model_training_date'] as String?,
  totalEngagedUsers: json['total_engaged_users'] != null ? (json['total_engaged_users'] as num).toInt() : null,
  totalChats: json['total_chats'] != null ? (json['total_chats'] as num).toInt() : null,
); }

/// Name of the model used for Copilot Chat. If the default model is used will appear as 'default'.
final String? name;

/// Indicates whether a model is custom or default.
final bool? isCustomModel;

/// The training date for the custom model (if applicable).
final String? customModelTrainingDate;

/// Total number of users who prompted Copilot Chat on github.com at least once for each model.
final int? totalEngagedUsers;

/// Total number of chats initiated by users on github.com.
final int? totalChats;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'is_custom_model': ?isCustomModel,
  'custom_model_training_date': ?customModelTrainingDate,
  'total_engaged_users': ?totalEngagedUsers,
  'total_chats': ?totalChats,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'is_custom_model', 'custom_model_training_date', 'total_engaged_users', 'total_chats'}.contains(key)); } 
CopilotDotcomChatModels copyWith({String Function()? name, bool Function()? isCustomModel, String? Function()? customModelTrainingDate, int Function()? totalEngagedUsers, int Function()? totalChats, }) { return CopilotDotcomChatModels(
  name: name != null ? name() : this.name,
  isCustomModel: isCustomModel != null ? isCustomModel() : this.isCustomModel,
  customModelTrainingDate: customModelTrainingDate != null ? customModelTrainingDate() : this.customModelTrainingDate,
  totalEngagedUsers: totalEngagedUsers != null ? totalEngagedUsers() : this.totalEngagedUsers,
  totalChats: totalChats != null ? totalChats() : this.totalChats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotDotcomChatModels &&
          name == other.name &&
          isCustomModel == other.isCustomModel &&
          customModelTrainingDate == other.customModelTrainingDate &&
          totalEngagedUsers == other.totalEngagedUsers &&
          totalChats == other.totalChats; } 
@override int get hashCode { return Object.hash(name, isCustomModel, customModelTrainingDate, totalEngagedUsers, totalChats); } 
@override String toString() { return 'CopilotDotcomChatModels(name: $name, isCustomModel: $isCustomModel, customModelTrainingDate: $customModelTrainingDate, totalEngagedUsers: $totalEngagedUsers, totalChats: $totalChats)'; } 
 }
