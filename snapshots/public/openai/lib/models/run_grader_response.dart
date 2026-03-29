// GENERATED CODE - DO NOT MODIFY BY HAND

import 'run_grader_response_metadata.dart';final class RunGraderResponse {const RunGraderResponse({required this.reward, required this.metadata, required this.subRewards, required this.modelGraderTokenUsagePerModel, });

factory RunGraderResponse.fromJson(Map<String, dynamic> json) { return RunGraderResponse(
  reward: (json['reward'] as num).toDouble(),
  metadata: RunGraderResponseMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  subRewards: (json['sub_rewards'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  modelGraderTokenUsagePerModel: (json['model_grader_token_usage_per_model'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
); }

final double reward;

final RunGraderResponseMetadata metadata;

final Map<String,dynamic> subRewards;

final Map<String,dynamic> modelGraderTokenUsagePerModel;

Map<String, dynamic> toJson() { return {
  'reward': reward,
  'metadata': metadata.toJson(),
  'sub_rewards': subRewards,
  'model_grader_token_usage_per_model': modelGraderTokenUsagePerModel,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('reward') && json['reward'] is num &&
      json.containsKey('metadata') &&
      json.containsKey('sub_rewards') &&
      json.containsKey('model_grader_token_usage_per_model'); } 
RunGraderResponse copyWith({double? reward, RunGraderResponseMetadata? metadata, Map<String,dynamic>? subRewards, Map<String,dynamic>? modelGraderTokenUsagePerModel, }) { return RunGraderResponse(
  reward: reward ?? this.reward,
  metadata: metadata ?? this.metadata,
  subRewards: subRewards ?? this.subRewards,
  modelGraderTokenUsagePerModel: modelGraderTokenUsagePerModel ?? this.modelGraderTokenUsagePerModel,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunGraderResponse &&
          reward == other.reward &&
          metadata == other.metadata &&
          subRewards == other.subRewards &&
          modelGraderTokenUsagePerModel == other.modelGraderTokenUsagePerModel; } 
@override int get hashCode { return Object.hash(reward, metadata, subRewards, modelGraderTokenUsagePerModel); } 
@override String toString() { return 'RunGraderResponse(reward: $reward, metadata: $metadata, subRewards: $subRewards, modelGraderTokenUsagePerModel: $modelGraderTokenUsagePerModel)'; } 
 }
