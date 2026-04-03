// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'time.dart';/// The node this Taint is attached to has the "effect" on any pod that does not tolerate the Taint.
@immutable final class Taint {const Taint({this.effect = '', this.key = '', this.timeAdded, this.value, });

factory Taint.fromJson(Map<String, dynamic> json) { return Taint(
  effect: json['effect'] as String,
  key: json['key'] as String,
  timeAdded: json['timeAdded'] != null ? Time.fromJson(json['timeAdded'] as String) : null,
  value: json['value'] as String?,
); }

/// Required. The effect of the taint on pods that do not tolerate the taint. Valid effects are NoSchedule, PreferNoSchedule and NoExecute.
final String effect;

/// Required. The taint key to be applied to a node.
final String key;

/// TimeAdded represents the time at which the taint was added.
final Time? timeAdded;

/// The taint value corresponding to the taint key.
final String? value;

Map<String, dynamic> toJson() { return {
  'effect': effect,
  'key': key,
  if (timeAdded != null) 'timeAdded': timeAdded?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('effect') && json['effect'] is String &&
      json.containsKey('key') && json['key'] is String; } 
Taint copyWith({String? effect, String? key, Time Function()? timeAdded, String Function()? value, }) { return Taint(
  effect: effect ?? this.effect,
  key: key ?? this.key,
  timeAdded: timeAdded != null ? timeAdded() : this.timeAdded,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Taint &&
          effect == other.effect &&
          key == other.key &&
          timeAdded == other.timeAdded &&
          value == other.value; } 
@override int get hashCode { return Object.hash(effect, key, timeAdded, value); } 
@override String toString() { return 'Taint(effect: $effect, key: $key, timeAdded: $timeAdded, value: $value)'; } 
 }
