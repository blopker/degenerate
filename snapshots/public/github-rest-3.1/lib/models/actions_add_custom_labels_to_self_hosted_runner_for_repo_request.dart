// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest {const ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest({required this.labels});

factory ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest.fromJson(Map<String, dynamic> json) { return ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest(
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The names of the custom labels to add to the runner.
final List<String> labels;

Map<String, dynamic> toJson() { return {
  'labels': labels,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('labels'); } 
ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest copyWith({List<String>? labels}) { return ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest(
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hashAll(labels).hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForRepoRequest(labels: $labels)'; } 
 }
