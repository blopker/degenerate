// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_ip_info_location.dart';@immutable final class DigitalExperienceMonitoringIpInfo {const DigitalExperienceMonitoringIpInfo({this.address = const Omittable.absent(), this.asn = const Omittable.absent(), this.aso = const Omittable.absent(), this.location, this.netmask = const Omittable.absent(), this.version = const Omittable.absent(), });

factory DigitalExperienceMonitoringIpInfo.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringIpInfo(
  address: json.containsKey('address') ? Omittable(json['address'] as String?) : const Omittable.absent(),
  asn: json.containsKey('asn') ? Omittable(json['asn'] != null ? (json['asn'] as num).toInt() : null) : const Omittable.absent(),
  aso: json.containsKey('aso') ? Omittable(json['aso'] as String?) : const Omittable.absent(),
  location: json['location'] != null ? DigitalExperienceMonitoringIpInfoLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  netmask: json.containsKey('netmask') ? Omittable(json['netmask'] as String?) : const Omittable.absent(),
  version: json.containsKey('version') ? Omittable(json['version'] as String?) : const Omittable.absent(),
); }

final Omittable<String?> address;

final Omittable<int?> asn;

final Omittable<String?> aso;

final DigitalExperienceMonitoringIpInfoLocation? location;

final Omittable<String?> netmask;

final Omittable<String?> version;

Map<String, dynamic> toJson() { return {
  if (address.isPresent) 'address': address.value,
  if (asn.isPresent) 'asn': asn.value,
  if (aso.isPresent) 'aso': aso.value,
  if (location != null) 'location': location?.toJson(),
  if (netmask.isPresent) 'netmask': netmask.value,
  if (version.isPresent) 'version': version.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'address', 'asn', 'aso', 'location', 'netmask', 'version'}.contains(key)); } 
DigitalExperienceMonitoringIpInfo copyWith({Omittable<String?>? address, Omittable<int?>? asn, Omittable<String?>? aso, DigitalExperienceMonitoringIpInfoLocation? Function()? location, Omittable<String?>? netmask, Omittable<String?>? version, }) { return DigitalExperienceMonitoringIpInfo(
  address: address ?? this.address,
  asn: asn ?? this.asn,
  aso: aso ?? this.aso,
  location: location != null ? location() : this.location,
  netmask: netmask ?? this.netmask,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringIpInfo &&
          address == other.address &&
          asn == other.asn &&
          aso == other.aso &&
          location == other.location &&
          netmask == other.netmask &&
          version == other.version; } 
@override int get hashCode { return Object.hash(address, asn, aso, location, netmask, version); } 
@override String toString() { return 'DigitalExperienceMonitoringIpInfo(address: $address, asn: $asn, aso: $aso, location: $location, netmask: $netmask, version: $version)'; } 
 }
