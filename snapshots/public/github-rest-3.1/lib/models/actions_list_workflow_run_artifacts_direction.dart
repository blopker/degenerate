// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsListWorkflowRunArtifactsDirection {const ActionsListWorkflowRunArtifactsDirection._(this.value);

factory ActionsListWorkflowRunArtifactsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => ActionsListWorkflowRunArtifactsDirection._(json),
}; }

static const ActionsListWorkflowRunArtifactsDirection asc = ActionsListWorkflowRunArtifactsDirection._('asc');

static const ActionsListWorkflowRunArtifactsDirection desc = ActionsListWorkflowRunArtifactsDirection._('desc');

static const List<ActionsListWorkflowRunArtifactsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsListWorkflowRunArtifactsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsListWorkflowRunArtifactsDirection($value)'; } 
 }
