// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetCountryReadResponseResult {const GetCountryReadResponseResult({required this.alpha3, required this.name, });

factory GetCountryReadResponseResult.fromJson(Map<String, dynamic> json) { return GetCountryReadResponseResult(
  alpha3: json['alpha3'] as String,
  name: json['name'] as String,
); }

final String alpha3;

final String name;

Map<String, dynamic> toJson() { return {
  'alpha3': alpha3,
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('alpha3') && json['alpha3'] is String &&
      json.containsKey('name') && json['name'] is String; } 
GetCountryReadResponseResult copyWith({String? alpha3, String? name, }) { return GetCountryReadResponseResult(
  alpha3: alpha3 ?? this.alpha3,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetCountryReadResponseResult &&
          alpha3 == other.alpha3 &&
          name == other.name; } 
@override int get hashCode { return Object.hash(alpha3, name); } 
@override String toString() { return 'GetCountryReadResponseResult(alpha3: $alpha3, name: $name)'; } 
 }
