// GENERATED CODE - DO NOT MODIFY BY HAND

/// The object type, which is always `python`.
final class EvalGraderPythonType {const EvalGraderPythonType._(this.value);

factory EvalGraderPythonType.fromJson(String json) { return switch (json) {
  'python' => python,
  _ => EvalGraderPythonType._(json),
}; }

static const EvalGraderPythonType python = EvalGraderPythonType._('python');

static const List<EvalGraderPythonType> values = [python];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalGraderPythonType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalGraderPythonType($value)'; } 
 }
final class EvalGraderPython {const EvalGraderPython({required this.type, required this.name, required this.source, this.imageTag, this.passThreshold, });

factory EvalGraderPython.fromJson(Map<String, dynamic> json) { return EvalGraderPython(
  type: EvalGraderPythonType.fromJson(json['type'] as String),
  name: json['name'] as String,
  source: json['source'] as String,
  imageTag: json['image_tag'] as String?,
  passThreshold: json['pass_threshold'] != null ? (json['pass_threshold'] as num).toDouble() : null,
); }

/// The object type, which is always `python`.
final EvalGraderPythonType type;

/// The name of the grader.
final String name;

/// The source code of the python script.
final String source;

/// The image tag to use for the python script.
final String? imageTag;

/// The threshold for the score.
final double? passThreshold;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'name': name,
  'source': source,
  'image_tag': ?imageTag,
  'pass_threshold': ?passThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('source') && json['source'] is String; } 
EvalGraderPython copyWith({EvalGraderPythonType? type, String? name, String? source, String Function()? imageTag, double Function()? passThreshold, }) { return EvalGraderPython(
  type: type ?? this.type,
  name: name ?? this.name,
  source: source ?? this.source,
  imageTag: imageTag != null ? imageTag() : this.imageTag,
  passThreshold: passThreshold != null ? passThreshold() : this.passThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalGraderPython &&
          type == other.type &&
          name == other.name &&
          source == other.source &&
          imageTag == other.imageTag &&
          passThreshold == other.passThreshold; } 
@override int get hashCode { return Object.hash(type, name, source, imageTag, passThreshold); } 
@override String toString() { return 'EvalGraderPython(type: $type, name: $name, source: $source, imageTag: $imageTag, passThreshold: $passThreshold)'; } 
 }
