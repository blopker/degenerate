// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Source colo city.
extension type const MagicTransitColoCity(String value) {
factory MagicTransitColoCity.fromJson(String json) => MagicTransitColoCity(json);

String toJson() => value;

}
/// Source colo name.
extension type const MagicTransitColoName(String value) {
factory MagicTransitColoName.fromJson(String json) => MagicTransitColoName(json);

String toJson() => value;

}
@immutable final class MagicTransitColo {const MagicTransitColo({this.city, this.name, });

factory MagicTransitColo.fromJson(Map<String, dynamic> json) { return MagicTransitColo(
  city: json['city'] != null ? MagicTransitColoCity.fromJson(json['city'] as String) : null,
  name: json['name'] != null ? MagicTransitColoName.fromJson(json['name'] as String) : null,
); }

final MagicTransitColoCity? city;

final MagicTransitColoName? name;

Map<String, dynamic> toJson() { return {
  if (city != null) 'city': city?.toJson(),
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'name'}.contains(key)); } 
MagicTransitColo copyWith({MagicTransitColoCity Function()? city, MagicTransitColoName Function()? name, }) { return MagicTransitColo(
  city: city != null ? city() : this.city,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicTransitColo &&
          city == other.city &&
          name == other.name; } 
@override int get hashCode { return Object.hash(city, name); } 
@override String toString() { return 'MagicTransitColo(city: $city, name: $name)'; } 
 }
