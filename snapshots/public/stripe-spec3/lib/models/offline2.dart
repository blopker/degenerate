// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Offline2 {const Offline2({required this.enabled});

factory Offline2.fromJson(Map<String, dynamic> json) { return Offline2(
  enabled: json['enabled'] as bool,
); }

final bool enabled;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
Offline2 copyWith({bool? enabled}) { return Offline2(
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Offline2 &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'Offline2(enabled: $enabled)'; } 
 }
