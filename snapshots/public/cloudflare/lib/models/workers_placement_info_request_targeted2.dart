// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Targeted placement mode.
@immutable final class WorkersPlacementInfoRequestTargeted2Mode {const WorkersPlacementInfoRequestTargeted2Mode._(this.value);

factory WorkersPlacementInfoRequestTargeted2Mode.fromJson(String json) {return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoRequestTargeted2Mode._(json),
};}

static const WorkersPlacementInfoRequestTargeted2Mode targeted = WorkersPlacementInfoRequestTargeted2Mode._('targeted');

static const List<WorkersPlacementInfoRequestTargeted2Mode> values = [targeted];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersPlacementInfoRequestTargeted2Mode && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersPlacementInfoRequestTargeted2Mode($value)';}
}
@immutable final class WorkersPlacementInfoRequestTargeted2 {const WorkersPlacementInfoRequestTargeted2({required this.hostname, required this.mode, });

factory WorkersPlacementInfoRequestTargeted2.fromJson(Map<String, dynamic> json) {return WorkersPlacementInfoRequestTargeted2(
  hostname: json['hostname'] as String,
  mode: WorkersPlacementInfoRequestTargeted2Mode.fromJson(json['mode'] as String),
);}

/// HTTP hostname for targeted placement.
final String hostname;

/// Targeted placement mode.
final WorkersPlacementInfoRequestTargeted2Mode mode;

Map<String, dynamic> toJson() {return {
  'hostname': hostname,
  'mode': mode.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('hostname') && json['hostname'] is String &&
      json.containsKey('mode');}
WorkersPlacementInfoRequestTargeted2 copyWith({String? hostname, WorkersPlacementInfoRequestTargeted2Mode? mode, }) {return WorkersPlacementInfoRequestTargeted2(
  hostname: hostname ?? this.hostname,
  mode: mode ?? this.mode,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersPlacementInfoRequestTargeted2 &&
          hostname == other.hostname &&
          mode == other.mode;}
@override int get hashCode {return Object.hash(hostname, mode);}
@override String toString() {return 'WorkersPlacementInfoRequestTargeted2(hostname: $hostname, mode: $mode)';}
}
