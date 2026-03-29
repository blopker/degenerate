// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetTldDetailsResponseResultTld {const RadarGetTldDetailsResponseResultTld({required this.manager, required this.tld, required this.type, });

factory RadarGetTldDetailsResponseResultTld.fromJson(Map<String, dynamic> json) { return RadarGetTldDetailsResponseResultTld(
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
RadarGetTldDetailsResponseResultTld copyWith({String? manager, String? tld, String? type, }) { return RadarGetTldDetailsResponseResultTld(
  manager: manager ?? this.manager,
  tld: tld ?? this.tld,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTldDetailsResponseResultTld &&
          manager == other.manager &&
          tld == other.tld &&
          type == other.type; } 
@override int get hashCode { return Object.hash(manager, tld, type); } 
@override String toString() { return 'RadarGetTldDetailsResponseResultTld(manager: $manager, tld: $tld, type: $type)'; } 
 }
