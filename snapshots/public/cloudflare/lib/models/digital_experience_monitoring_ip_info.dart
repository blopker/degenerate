// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_ip_info_location.dart';final class DigitalExperienceMonitoringIpInfo {const DigitalExperienceMonitoringIpInfo({this.address, this.asn, this.aso, this.location, this.netmask, this.version, });

factory DigitalExperienceMonitoringIpInfo.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringIpInfo(
  address: json['address'] as String?,
  asn: json['asn'] != null ? (json['asn'] as num).toInt() : null,
  aso: json['aso'] as String?,
  location: json['location'] != null ? DigitalExperienceMonitoringIpInfoLocation.fromJson(json['location'] as Map<String, dynamic>) : null,
  netmask: json['netmask'] as String?,
  version: json['version'] as String?,
); }

final String? address;

final int? asn;

final String? aso;

final DigitalExperienceMonitoringIpInfoLocation? location;

final String? netmask;

final String? version;

Map<String, dynamic> toJson() { return {
  'address': ?address,
  'asn': ?asn,
  'aso': ?aso,
  if (location != null) 'location': location?.toJson(),
  'netmask': ?netmask,
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
DigitalExperienceMonitoringIpInfo copyWith({String? Function()? address, int? Function()? asn, String? Function()? aso, DigitalExperienceMonitoringIpInfoLocation Function()? location, String? Function()? netmask, String? Function()? version, }) { return DigitalExperienceMonitoringIpInfo(
  address: address != null ? address() : this.address,
  asn: asn != null ? asn() : this.asn,
  aso: aso != null ? aso() : this.aso,
  location: location != null ? location() : this.location,
  netmask: netmask != null ? netmask() : this.netmask,
  version: version != null ? version() : this.version,
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
