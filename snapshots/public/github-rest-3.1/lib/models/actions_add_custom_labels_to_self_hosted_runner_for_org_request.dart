// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest {const ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest({required this.labels});

factory ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest.fromJson(Map<String, dynamic> json) { return ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest(
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The names of the custom labels to add to the runner.
final List<String> labels;

Map<String, dynamic> toJson() { return {
  'labels': labels,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('labels'); } 
ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest copyWith({List<String>? labels}) { return ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest(
  labels: labels ?? this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hashAll(labels).hashCode; } 
@override String toString() { return 'ActionsAddCustomLabelsToSelfHostedRunnerForOrgRequest(labels: $labels)'; } 
 }
