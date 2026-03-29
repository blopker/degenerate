// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAnnotationsResponseResultAnnotationsOutage {const RadarGetAnnotationsResponseResultAnnotationsOutage({required this.outageCause, required this.outageType, });

factory RadarGetAnnotationsResponseResultAnnotationsOutage.fromJson(Map<String, dynamic> json) { return RadarGetAnnotationsResponseResultAnnotationsOutage(
  outageCause: json['outageCause'] as String,
  outageType: json['outageType'] as String,
); }

final String outageCause;

final String outageType;

Map<String, dynamic> toJson() { return {
  'outageCause': outageCause,
  'outageType': outageType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('outageCause') && json['outageCause'] is String &&
      json.containsKey('outageType') && json['outageType'] is String; } 
RadarGetAnnotationsResponseResultAnnotationsOutage copyWith({String? outageCause, String? outageType, }) { return RadarGetAnnotationsResponseResultAnnotationsOutage(
  outageCause: outageCause ?? this.outageCause,
  outageType: outageType ?? this.outageType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAnnotationsResponseResultAnnotationsOutage &&
          outageCause == other.outageCause &&
          outageType == other.outageType; } 
@override int get hashCode { return Object.hash(outageCause, outageType); } 
@override String toString() { return 'RadarGetAnnotationsResponseResultAnnotationsOutage(outageCause: $outageCause, outageType: $outageType)'; } 
 }
