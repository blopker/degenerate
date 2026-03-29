// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of label. Read-only labels are applied automatically when the runner is configured.
final class RunnerLabelType {const RunnerLabelType._(this.value);

factory RunnerLabelType.fromJson(String json) { return switch (json) {
  'read-only' => readOnly,
  'custom' => custom,
  _ => RunnerLabelType._(json),
}; }

static const RunnerLabelType readOnly = RunnerLabelType._('read-only');

static const RunnerLabelType custom = RunnerLabelType._('custom');

static const List<RunnerLabelType> values = [readOnly, custom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RunnerLabelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RunnerLabelType($value)'; } 
 }
/// A label for a self hosted runner
final class RunnerLabel {const RunnerLabel({this.id, required this.name, this.type, });

factory RunnerLabel.fromJson(Map<String, dynamic> json) { return RunnerLabel(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  name: json['name'] as String,
  type: json['type'] != null ? RunnerLabelType.fromJson(json['type'] as String) : null,
); }

/// Unique identifier of the label.
final int? id;

/// Name of the label.
final String name;

/// The type of label. Read-only labels are applied automatically when the runner is configured.
final RunnerLabelType? type;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': name,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
RunnerLabel copyWith({int Function()? id, String? name, RunnerLabelType Function()? type, }) { return RunnerLabel(
  id: id != null ? id() : this.id,
  name: name ?? this.name,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunnerLabel &&
          id == other.id &&
          name == other.name &&
          type == other.type; } 
@override int get hashCode { return Object.hash(id, name, type); } 
@override String toString() { return 'RunnerLabel(id: $id, name: $name, type: $type)'; } 
 }
