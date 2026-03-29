// GENERATED CODE - DO NOT MODIFY BY HAND

/// Targeted placement mode.
final class WorkersPlacementInfoNoStatusTargeted3Mode {const WorkersPlacementInfoNoStatusTargeted3Mode._(this.value);

factory WorkersPlacementInfoNoStatusTargeted3Mode.fromJson(String json) { return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoNoStatusTargeted3Mode._(json),
}; }

static const WorkersPlacementInfoNoStatusTargeted3Mode targeted = WorkersPlacementInfoNoStatusTargeted3Mode._('targeted');

static const List<WorkersPlacementInfoNoStatusTargeted3Mode> values = [targeted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersPlacementInfoNoStatusTargeted3Mode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoNoStatusTargeted3Mode($value)'; } 
 }
final class WorkersPlacementInfoNoStatusTargeted3 {const WorkersPlacementInfoNoStatusTargeted3({required this.host, required this.mode, });

factory WorkersPlacementInfoNoStatusTargeted3.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoNoStatusTargeted3(
  host: json['host'] as String,
  mode: WorkersPlacementInfoNoStatusTargeted3Mode.fromJson(json['mode'] as String),
); }

/// TCP host and port for targeted placement.
final String host;

/// Targeted placement mode.
final WorkersPlacementInfoNoStatusTargeted3Mode mode;

Map<String, dynamic> toJson() { return {
  'host': host,
  'mode': mode.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') && json['host'] is String &&
      json.containsKey('mode'); } 
WorkersPlacementInfoNoStatusTargeted3 copyWith({String? host, WorkersPlacementInfoNoStatusTargeted3Mode? mode, }) { return WorkersPlacementInfoNoStatusTargeted3(
  host: host ?? this.host,
  mode: mode ?? this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoNoStatusTargeted3 &&
          host == other.host &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(host, mode); } 
@override String toString() { return 'WorkersPlacementInfoNoStatusTargeted3(host: $host, mode: $mode)'; } 
 }
