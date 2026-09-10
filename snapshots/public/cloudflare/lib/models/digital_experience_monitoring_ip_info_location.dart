// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringIpInfoLocation {const DigitalExperienceMonitoringIpInfoLocation({this.city = const Omittable.absent(), this.countryIso = const Omittable.absent(), this.stateIso = const Omittable.absent(), this.zip = const Omittable.absent(), });

factory DigitalExperienceMonitoringIpInfoLocation.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringIpInfoLocation(
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  countryIso: json.containsKey('country_iso') ? Omittable(json['country_iso'] as String?) : const Omittable.absent(),
  stateIso: json.containsKey('state_iso') ? Omittable(json['state_iso'] as String?) : const Omittable.absent(),
  zip: json.containsKey('zip') ? Omittable(json['zip'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> city;

final Omittable<String?> countryIso;

final Omittable<String?> stateIso;

final Omittable<String?> zip;

Map<String, dynamic> toJson() { return {
  if (city.isPresent) 'city': city.value,
  if (countryIso.isPresent) 'country_iso': countryIso.value,
  if (stateIso.isPresent) 'state_iso': stateIso.value,
  if (zip.isPresent) 'zip': zip.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'country_iso', 'state_iso', 'zip'}.contains(key)); } 
DigitalExperienceMonitoringIpInfoLocation copyWith({Omittable<String?>? city, Omittable<String?>? countryIso, Omittable<String?>? stateIso, Omittable<String?>? zip, }) { return DigitalExperienceMonitoringIpInfoLocation(
  city: city ?? this.city,
  countryIso: countryIso ?? this.countryIso,
  stateIso: stateIso ?? this.stateIso,
  zip: zip ?? this.zip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringIpInfoLocation &&
          city == other.city &&
          countryIso == other.countryIso &&
          stateIso == other.stateIso &&
          zip == other.zip; } 
@override int get hashCode { return Object.hash(city, countryIso, stateIso, zip); } 
@override String toString() { return 'DigitalExperienceMonitoringIpInfoLocation(city: $city, countryIso: $countryIso, stateIso: $stateIso, zip: $zip)'; } 
 }
