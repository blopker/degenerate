// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest {const ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest({required this.labels});

factory ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest.fromJson(Map<String, dynamic> json) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest(
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The names of the custom labels to set for the runner. You can pass an empty array to remove all custom labels.
final List<String> labels;

Map<String, dynamic> toJson() { return {
  'labels': labels,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('labels'); } 
ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest copyWith({List<String>? labels}) { return ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest(
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hashAll(labels).hashCode; } 
@override String toString() { return 'ActionsSetCustomLabelsForSelfHostedRunnerForRepoRequest(labels: $labels)'; } 
 }
