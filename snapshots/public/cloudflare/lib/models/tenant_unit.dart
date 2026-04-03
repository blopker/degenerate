// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class TenantUnit {const TenantUnit({required this.unitMemberships, required this.unitMetadata, required this.unitName, required this.unitStatus, required this.unitTag, });

factory TenantUnit.fromJson(Map<String, dynamic> json) { return TenantUnit(
  unitMemberships: (json['unit_memberships'] as List<dynamic>).map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
  unitMetadata: (json['unit_metadata'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),
  unitName: json['unit_name'] as String,
  unitStatus: json['unit_status'] as String,
  unitTag: json['unit_tag'] as String,
); }

final List<Map<String,dynamic>> unitMemberships;

final Map<String,dynamic> unitMetadata;

final String unitName;

final String unitStatus;

final String unitTag;

Map<String, dynamic> toJson() { return {
  'unit_memberships': unitMemberships.map((e) => e).toList(),
  'unit_metadata': unitMetadata,
  'unit_name': unitName,
  'unit_status': unitStatus,
  'unit_tag': unitTag,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('unit_memberships') &&
      json.containsKey('unit_metadata') &&
      json.containsKey('unit_name') && json['unit_name'] is String &&
      json.containsKey('unit_status') && json['unit_status'] is String &&
      json.containsKey('unit_tag') && json['unit_tag'] is String; } 
TenantUnit copyWith({List<Map<String,dynamic>>? unitMemberships, Map<String,dynamic>? unitMetadata, String? unitName, String? unitStatus, String? unitTag, }) { return TenantUnit(
  unitMemberships: unitMemberships ?? this.unitMemberships,
  unitMetadata: unitMetadata ?? this.unitMetadata,
  unitName: unitName ?? this.unitName,
  unitStatus: unitStatus ?? this.unitStatus,
  unitTag: unitTag ?? this.unitTag,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TenantUnit &&
          listEquals(unitMemberships, other.unitMemberships) &&
          unitMetadata == other.unitMetadata &&
          unitName == other.unitName &&
          unitStatus == other.unitStatus &&
          unitTag == other.unitTag; } 
@override int get hashCode { return Object.hash(Object.hashAll(unitMemberships), unitMetadata, unitName, unitStatus, unitTag); } 
@override String toString() { return 'TenantUnit(unitMemberships: $unitMemberships, unitMetadata: $unitMetadata, unitName: $unitName, unitStatus: $unitStatus, unitTag: $unitTag)'; } 
 }
