// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEntitiesAsnByIdResponseResultAsnRelated {const RadarGetEntitiesAsnByIdResponseResultAsnRelated({this.aka, required this.asn, this.estimatedUsers, required this.name, });

factory RadarGetEntitiesAsnByIdResponseResultAsnRelated.fromJson(Map<String, dynamic> json) { return RadarGetEntitiesAsnByIdResponseResultAsnRelated(
  aka: json['aka'] as String?,
  asn: (json['asn'] as num).toInt(),
  estimatedUsers: json['estimatedUsers'] != null ? (json['estimatedUsers'] as num).toInt() : null,
  name: json['name'] as String,
); }

final String? aka;

final int asn;

/// Total estimated users.
final int? estimatedUsers;

final String name;

Map<String, dynamic> toJson() { return {
  'aka': ?aka,
  'asn': asn,
  'estimatedUsers': ?estimatedUsers,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('asn') && json['asn'] is num &&
      json.containsKey('name') && json['name'] is String; } 
RadarGetEntitiesAsnByIdResponseResultAsnRelated copyWith({String Function()? aka, int? asn, int Function()? estimatedUsers, String? name, }) { return RadarGetEntitiesAsnByIdResponseResultAsnRelated(
  aka: aka != null ? aka() : this.aka,
  asn: asn ?? this.asn,
  estimatedUsers: estimatedUsers != null ? estimatedUsers() : this.estimatedUsers,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEntitiesAsnByIdResponseResultAsnRelated &&
          aka == other.aka &&
          asn == other.asn &&
          estimatedUsers == other.estimatedUsers &&
          name == other.name; } 
@override int get hashCode { return Object.hash(aka, asn, estimatedUsers, name); } 
@override String toString() { return 'RadarGetEntitiesAsnByIdResponseResultAsnRelated(aka: $aka, asn: $asn, estimatedUsers: $estimatedUsers, name: $name)'; } 
 }
