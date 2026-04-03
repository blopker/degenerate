// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'runner_label.dart';@immutable final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse({required this.totalCount, required this.labels, });

factory ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse.fromJson(Map<String, dynamic> json) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse(
  totalCount: (json['total_count'] as num).toInt(),
  labels: (json['labels'] as List<dynamic>).map((e) => RunnerLabel.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<RunnerLabel> labels;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'labels': labels.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('labels'); } 
ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse copyWith({int? totalCount, List<RunnerLabel>? labels, }) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse(
  totalCount: totalCount ?? this.totalCount,
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse &&
          totalCount == other.totalCount &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(labels)); } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForRepoResponse(totalCount: $totalCount, labels: $labels)'; } 
 }
