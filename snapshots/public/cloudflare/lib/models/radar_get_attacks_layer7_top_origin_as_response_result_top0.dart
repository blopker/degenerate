// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TopOriginAsResponseResultTop0 {const RadarGetAttacksLayer7TopOriginAsResponseResultTop0({required this.originAsn, required this.originAsnName, required this.rank, required this.value, });

factory RadarGetAttacksLayer7TopOriginAsResponseResultTop0.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopOriginAsResponseResultTop0(
  originAsn: json['originAsn'] as String,
  originAsnName: json['originAsnName'] as String,
  rank: (json['rank'] as num).toDouble(),
  value: json['value'] as String,
); }

final String originAsn;

final String originAsnName;

final double rank;

final String value;

Map<String, dynamic> toJson() { return {
  'originAsn': originAsn,
  'originAsnName': originAsnName,
  'rank': rank,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('originAsn') && json['originAsn'] is String &&
      json.containsKey('originAsnName') && json['originAsnName'] is String &&
      json.containsKey('rank') && json['rank'] is num &&
      json.containsKey('value') && json['value'] is String; } 
RadarGetAttacksLayer7TopOriginAsResponseResultTop0 copyWith({String? originAsn, String? originAsnName, double? rank, String? value, }) { return RadarGetAttacksLayer7TopOriginAsResponseResultTop0(
  originAsn: originAsn ?? this.originAsn,
  originAsnName: originAsnName ?? this.originAsnName,
  rank: rank ?? this.rank,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopOriginAsResponseResultTop0 &&
          originAsn == other.originAsn &&
          originAsnName == other.originAsnName &&
          rank == other.rank &&
          value == other.value; } 
@override int get hashCode { return Object.hash(originAsn, originAsnName, rank, value); } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginAsResponseResultTop0(originAsn: $originAsn, originAsnName: $originAsnName, rank: $rank, value: $value)'; } 
 }
