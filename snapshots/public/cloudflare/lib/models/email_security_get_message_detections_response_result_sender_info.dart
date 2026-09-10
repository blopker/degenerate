// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetMessageDetectionsResponseResultSenderInfo {const EmailSecurityGetMessageDetectionsResponseResultSenderInfo({this.asName = const Omittable.absent(), this.asNumber = const Omittable.absent(), this.geo = const Omittable.absent(), this.ip = const Omittable.absent(), this.pld = const Omittable.absent(), });

factory EmailSecurityGetMessageDetectionsResponseResultSenderInfo.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageDetectionsResponseResultSenderInfo(
  asName: json.containsKey('as_name') ? Omittable(json['as_name'] as String?) : const Omittable.absent(),
  asNumber: json.containsKey('as_number') ? Omittable(json['as_number'] != null ? (json['as_number'] as num).toInt() : null) : const Omittable.absent(),
  geo: json.containsKey('geo') ? Omittable(json['geo'] as String?) : const Omittable.absent(),
  ip: json.containsKey('ip') ? Omittable(json['ip'] as String?) : const Omittable.absent(),
  pld: json.containsKey('pld') ? Omittable(json['pld'] as String?) : const Omittable.absent(),
); }

/// The name of the autonomous system.
final Omittable<String?> asName;

/// The number of the autonomous system.
final Omittable<int?> asNumber;

final Omittable<String?> geo;

final Omittable<String?> ip;

final Omittable<String?> pld;

Map<String, dynamic> toJson() { return {
  if (asName.isPresent) 'as_name': asName.value,
  if (asNumber.isPresent) 'as_number': asNumber.value,
  if (geo.isPresent) 'geo': geo.value,
  if (ip.isPresent) 'ip': ip.value,
  if (pld.isPresent) 'pld': pld.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'as_name', 'as_number', 'geo', 'ip', 'pld'}.contains(key)); } 
EmailSecurityGetMessageDetectionsResponseResultSenderInfo copyWith({Omittable<String?>? asName, Omittable<int?>? asNumber, Omittable<String?>? geo, Omittable<String?>? ip, Omittable<String?>? pld, }) { return EmailSecurityGetMessageDetectionsResponseResultSenderInfo(
  asName: asName ?? this.asName,
  asNumber: asNumber ?? this.asNumber,
  geo: geo ?? this.geo,
  ip: ip ?? this.ip,
  pld: pld ?? this.pld,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageDetectionsResponseResultSenderInfo &&
          asName == other.asName &&
          asNumber == other.asNumber &&
          geo == other.geo &&
          ip == other.ip &&
          pld == other.pld; } 
@override int get hashCode { return Object.hash(asName, asNumber, geo, ip, pld); } 
@override String toString() { return 'EmailSecurityGetMessageDetectionsResponseResultSenderInfo(asName: $asName, asNumber: $asNumber, geo: $geo, ip: $ip, pld: $pld)'; } 
 }
