// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation {const DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation({this.city = const Omittable.absent(), this.state = const Omittable.absent(), this.zip = const Omittable.absent(), });

factory DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation(
  city: json.containsKey('city') ? Omittable(json['city'] as String?) : const Omittable.absent(),
  state: json.containsKey('state') ? Omittable(json['state'] as String?) : const Omittable.absent(),
  zip: json.containsKey('zip') ? Omittable(json['zip'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> city;

final Omittable<String?> state;

final Omittable<String?> zip;

Map<String, dynamic> toJson() { return {
  if (city.isPresent) 'city': city.value,
  if (state.isPresent) 'state': state.value,
  if (zip.isPresent) 'zip': zip.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'city', 'state', 'zip'}.contains(key)); } 
DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation copyWith({Omittable<String?>? city, Omittable<String?>? state, Omittable<String?>? zip, }) { return DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation(
  city: city ?? this.city,
  state: state ?? this.state,
  zip: zip ?? this.zip,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation &&
          city == other.city &&
          state == other.state &&
          zip == other.zip; } 
@override int get hashCode { return Object.hash(city, state, zip); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteTestResultNetworkPathResponseHopsLocation(city: $city, state: $state, zip: $zip)'; } 
 }
