// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Adds and removes POSIX capabilities from running containers.
final class Capabilities {const Capabilities({this.add, this.drop, });

factory Capabilities.fromJson(Map<String, dynamic> json) { return Capabilities(
  add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
  drop: (json['drop'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Added capabilities
final List<String>? add;

/// Removed capabilities
final List<String>? drop;

Map<String, dynamic> toJson() { return {
  'add': ?add,
  'drop': ?drop,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Capabilities copyWith({List<String> Function()? add, List<String> Function()? drop, }) { return Capabilities(
  add: add != null ? add() : this.add,
  drop: drop != null ? drop() : this.drop,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Capabilities &&
          listEquals(add, other.add) &&
          listEquals(drop, other.drop); } 
@override int get hashCode { return Object.hash(Object.hashAll(add ?? const []), Object.hashAll(drop ?? const [])); } 
@override String toString() { return 'Capabilities(add: $add, drop: $drop)'; } 
 }
