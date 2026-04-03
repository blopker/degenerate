// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersPlacementInfoVariant4 {const WorkersPlacementInfoVariant4({required this.host});

factory WorkersPlacementInfoVariant4.fromJson(Map<String, dynamic> json) { return WorkersPlacementInfoVariant4(
  host: json['host'] as String,
); }

/// TCP host and port for targeted placement.
final String host;

Map<String, dynamic> toJson() { return {
  'host': host,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') && json['host'] is String; } 
WorkersPlacementInfoVariant4 copyWith({String? host}) { return WorkersPlacementInfoVariant4(
  host: host ?? this.host,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersPlacementInfoVariant4 &&
          host == other.host; } 
@override int get hashCode { return host.hashCode; } 
@override String toString() { return 'WorkersPlacementInfoVariant4(host: $host)'; } 
 }
