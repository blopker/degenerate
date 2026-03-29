// GENERATED CODE - DO NOT MODIFY BY HAND

/// Settings for this internal zone.
final class DnsSettingsInternalDnsBase {const DnsSettingsInternalDnsBase({this.referenceZoneId});

factory DnsSettingsInternalDnsBase.fromJson(Map<String, dynamic> json) { return DnsSettingsInternalDnsBase(
  referenceZoneId: json['reference_zone_id'] as String?,
); }

/// The ID of the zone to fallback to.
final String? referenceZoneId;

Map<String, dynamic> toJson() { return {
  'reference_zone_id': ?referenceZoneId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'reference_zone_id'}.contains(key)); } 
DnsSettingsInternalDnsBase copyWith({String Function()? referenceZoneId}) { return DnsSettingsInternalDnsBase(
  referenceZoneId: referenceZoneId != null ? referenceZoneId() : this.referenceZoneId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnsSettingsInternalDnsBase &&
          referenceZoneId == other.referenceZoneId; } 
@override int get hashCode { return referenceZoneId.hashCode; } 
@override String toString() { return 'DnsSettingsInternalDnsBase(referenceZoneId: $referenceZoneId)'; } 
 }
