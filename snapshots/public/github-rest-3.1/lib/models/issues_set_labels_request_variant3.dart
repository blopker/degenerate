// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issues_set_labels_request_variant3_labels.dart';@immutable final class IssuesSetLabelsRequestVariant3 {const IssuesSetLabelsRequestVariant3({this.labels});

factory IssuesSetLabelsRequestVariant3.fromJson(Map<String, dynamic> json) { return IssuesSetLabelsRequestVariant3(
  labels: (json['labels'] as List<dynamic>?)?.map((e) => IssuesSetLabelsRequestVariant3Labels.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<IssuesSetLabelsRequestVariant3Labels>? labels;

Map<String, dynamic> toJson() { return {
  if (labels != null) 'labels': labels?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'labels'}.contains(key)); } 
IssuesSetLabelsRequestVariant3 copyWith({List<IssuesSetLabelsRequestVariant3Labels> Function()? labels}) { return IssuesSetLabelsRequestVariant3(
  labels: labels != null ? labels() : this.labels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesSetLabelsRequestVariant3 &&
          listEquals(labels, other.labels); } 
@override int get hashCode { return Object.hashAll(labels ?? const []).hashCode; } 
@override String toString() { return 'IssuesSetLabelsRequestVariant3(labels: $labels)'; } 
 }
