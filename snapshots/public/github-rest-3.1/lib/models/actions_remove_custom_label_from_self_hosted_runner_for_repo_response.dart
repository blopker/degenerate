// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'runner_label.dart';@immutable final class ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse {const ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse({required this.totalCount, required this.labels, });

factory ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse.fromJson(Map<String, dynamic> json) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse(
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
ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse copyWith({int? totalCount, List<RunnerLabel>? labels, }) { return ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse(
  totalCount: totalCount ?? this.totalCount,
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse &&
          totalCount == other.totalCount &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(labels)); } 
@override String toString() { return 'ActionsRemoveCustomLabelFromSelfHostedRunnerForRepoResponse(totalCount: $totalCount, labels: $labels)'; } 
 }
