// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'runner_label.dart';@immutable final class ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse {const ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse({required this.totalCount, required this.labels, });

factory ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse.fromJson(Map<String, dynamic> json) { return ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse(
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
ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse copyWith({int? totalCount, List<RunnerLabel>? labels, }) { return ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse(
  totalCount: totalCount ?? this.totalCount,
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse &&
          totalCount == other.totalCount &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(labels)); } 
@override String toString() { return 'ActionsRemoveAllCustomLabelsFromSelfHostedRunnerForOrgResponse(totalCount: $totalCount, labels: $labels)'; } 
 }
