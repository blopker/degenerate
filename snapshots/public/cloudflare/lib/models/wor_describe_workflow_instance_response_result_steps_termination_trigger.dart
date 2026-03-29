// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger {const WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger({required this.source});

factory WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger(
  source: json['source'] as String,
); }

final String source;

Map<String, dynamic> toJson() { return {
  'source': source,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('source') && json['source'] is String; } 
WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger copyWith({String? source}) { return WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger(
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger &&
          source == other.source; } 
@override int get hashCode { return source.hashCode; } 
@override String toString() { return 'WorDescribeWorkflowInstanceResponseResultStepsTerminationTrigger(source: $source)'; } 
 }
