// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkersObservabilityQueryResultsEventsFields {const WorkersObservabilityQueryResultsEventsFields({required this.key, required this.type, });

factory WorkersObservabilityQueryResultsEventsFields.fromJson(Map<String, dynamic> json) { return WorkersObservabilityQueryResultsEventsFields(
  key: json['key'] as String,
  type: json['type'] as String,
); }

final String key;

final String type;

Map<String, dynamic> toJson() { return {
  'key': key,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersObservabilityQueryResultsEventsFields copyWith({String? key, String? type, }) { return WorkersObservabilityQueryResultsEventsFields(
  key: key ?? this.key,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityQueryResultsEventsFields &&
          key == other.key &&
          type == other.type; } 
@override int get hashCode { return Object.hash(key, type); } 
@override String toString() { return 'WorkersObservabilityQueryResultsEventsFields(key: $key, type: $type)'; } 
 }
