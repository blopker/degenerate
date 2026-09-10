// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_placement_target.dart';import 'workers_placement_target_variant1.dart';import 'workers_placement_target_variant2.dart';import 'workers_placement_target_variant3.dart';/// Targeted placement mode.
@immutable final class WorkersPlacementInfoRequestTargeted4Mode {const WorkersPlacementInfoRequestTargeted4Mode._(this.value);

factory WorkersPlacementInfoRequestTargeted4Mode.fromJson(String json) {return switch (json) {
  'targeted' => targeted,
  _ => WorkersPlacementInfoRequestTargeted4Mode._(json),
};}

static const WorkersPlacementInfoRequestTargeted4Mode targeted = WorkersPlacementInfoRequestTargeted4Mode._('targeted');

static const List<WorkersPlacementInfoRequestTargeted4Mode> values = [targeted];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersPlacementInfoRequestTargeted4Mode && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersPlacementInfoRequestTargeted4Mode($value)';}
}
@immutable final class WorkersPlacementInfoRequestTargeted4 {const WorkersPlacementInfoRequestTargeted4({required this.mode, required this.target, });

factory WorkersPlacementInfoRequestTargeted4.fromJson(Map<String, dynamic> json) {return WorkersPlacementInfoRequestTargeted4(
  mode: WorkersPlacementInfoRequestTargeted4Mode.fromJson(json['mode'] as String),
  target: (json['target'] as List<dynamic>).map((e) => OneOf3.parse(e, fromA: (v) => WorkersPlacementTargetVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersPlacementTargetVariant2.fromJson(v as Map<String, dynamic>), fromC: (v) => WorkersPlacementTargetVariant3.fromJson(v as Map<String, dynamic>),)).toList(),
);}

/// Targeted placement mode.
final WorkersPlacementInfoRequestTargeted4Mode mode;

/// Array of placement targets (currently limited to single target).
final List<WorkersPlacementTarget> target;

Map<String, dynamic> toJson() {return {
  'mode': mode.toJson(),
  'target': target.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('mode') &&
      json.containsKey('target');}
WorkersPlacementInfoRequestTargeted4 copyWith({WorkersPlacementInfoRequestTargeted4Mode? mode, List<WorkersPlacementTarget>? target, }) {return WorkersPlacementInfoRequestTargeted4(
  mode: mode ?? this.mode,
  target: target ?? this.target,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersPlacementInfoRequestTargeted4 &&
          mode == other.mode &&
          listEquals(target, other.target);}
@override int get hashCode {return Object.hash(mode, Object.hashAll(target));}
@override String toString() {return 'WorkersPlacementInfoRequestTargeted4(mode: $mode, target: $target)';}
}
