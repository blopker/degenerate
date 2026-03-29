// GENERATED CODE - DO NOT MODIFY BY HAND

/// Type of source
final class MqEventSourceWorkersAiModelType {const MqEventSourceWorkersAiModelType._(this.value);

factory MqEventSourceWorkersAiModelType.fromJson(String json) { return switch (json) {
  'workersAi.model' => workersAiModel,
  _ => MqEventSourceWorkersAiModelType._(json),
}; }

static const MqEventSourceWorkersAiModelType workersAiModel = MqEventSourceWorkersAiModelType._('workersAi.model');

static const List<MqEventSourceWorkersAiModelType> values = [workersAiModel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventSourceWorkersAiModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventSourceWorkersAiModelType($value)'; } 
 }
final class MqEventSourceWorkersAiModel {const MqEventSourceWorkersAiModel({this.modelName, this.type, });

factory MqEventSourceWorkersAiModel.fromJson(Map<String, dynamic> json) { return MqEventSourceWorkersAiModel(
  modelName: json['model_name'] as String?,
  type: json['type'] != null ? MqEventSourceWorkersAiModelType.fromJson(json['type'] as String) : null,
); }

/// Name of the Workers AI model
final String? modelName;

/// Type of source
final MqEventSourceWorkersAiModelType? type;

Map<String, dynamic> toJson() { return {
  'model_name': ?modelName,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
MqEventSourceWorkersAiModel copyWith({String Function()? modelName, MqEventSourceWorkersAiModelType Function()? type, }) { return MqEventSourceWorkersAiModel(
  modelName: modelName != null ? modelName() : this.modelName,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSourceWorkersAiModel &&
          modelName == other.modelName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(modelName, type); } 
@override String toString() { return 'MqEventSourceWorkersAiModel(modelName: $modelName, type: $type)'; } 
 }
