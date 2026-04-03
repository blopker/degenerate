// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetTldsResponseResultTlds {const RadarGetTldsResponseResultTlds({required this.manager, required this.tld, required this.type, });

factory RadarGetTldsResponseResultTlds.fromJson(Map<String, dynamic> json) { return RadarGetTldsResponseResultTlds(
  manager: json['manager'] as String,
  tld: json['tld'] as String,
  type: json['type'] as String,
); }

/// The organization that manages the TLD.
final String manager;

/// The actual TLD.
final String tld;

/// The type of TLD.
final String type;

Map<String, dynamic> toJson() { return {
  'manager': manager,
  'tld': tld,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('manager') && json['manager'] is String &&
      json.containsKey('tld') && json['tld'] is String &&
      json.containsKey('type') && json['type'] is String; } 
RadarGetTldsResponseResultTlds copyWith({String? manager, String? tld, String? type, }) { return RadarGetTldsResponseResultTlds(
  manager: manager ?? this.manager,
  tld: tld ?? this.tld,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTldsResponseResultTlds &&
          manager == other.manager &&
          tld == other.tld &&
          type == other.type; } 
@override int get hashCode { return Object.hash(manager, tld, type); } 
@override String toString() { return 'RadarGetTldsResponseResultTlds(manager: $manager, tld: $tld, type: $type)'; } 
 }
