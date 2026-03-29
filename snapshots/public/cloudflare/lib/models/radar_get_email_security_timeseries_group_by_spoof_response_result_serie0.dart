// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0 {const RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0({required this.notSpoof, required this.spoof, });

factory RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0(
  notSpoof: (json['NOT_SPOOF'] as List<dynamic>).map((e) => e as String).toList(),
  spoof: (json['SPOOF'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> notSpoof;

final List<String> spoof;

Map<String, dynamic> toJson() { return {
  'NOT_SPOOF': notSpoof,
  'SPOOF': spoof,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('NOT_SPOOF') &&
      json.containsKey('SPOOF'); } 
RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0 copyWith({List<String>? notSpoof, List<String>? spoof, }) { return RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0(
  notSpoof: notSpoof ?? this.notSpoof,
  spoof: spoof ?? this.spoof,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0 &&
          listEquals(notSpoof, other.notSpoof) &&
          listEquals(spoof, other.spoof); } 
@override int get hashCode { return Object.hash(Object.hashAll(notSpoof), Object.hashAll(spoof)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpoofResponseResultSerie0(notSpoof: $notSpoof, spoof: $spoof)'; } 
 }
