// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetMessageDetectionsResponseResultSenderInfo {const EmailSecurityGetMessageDetectionsResponseResultSenderInfo({this.asName, this.asNumber, this.geo, this.ip, this.pld, });

factory EmailSecurityGetMessageDetectionsResponseResultSenderInfo.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageDetectionsResponseResultSenderInfo(
  asName: json['as_name'] as String?,
  asNumber: json['as_number'] != null ? (json['as_number'] as num).toInt() : null,
  geo: json['geo'] as String?,
  ip: json['ip'] as String?,
  pld: json['pld'] as String?,
); }

/// The name of the autonomous system.
final String? asName;

/// The number of the autonomous system.
final int? asNumber;

final String? geo;

final String? ip;

final String? pld;

Map<String, dynamic> toJson() { return {
  'as_name': ?asName,
  'as_number': ?asNumber,
  'geo': ?geo,
  'ip': ?ip,
  'pld': ?pld,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'as_name', 'as_number', 'geo', 'ip', 'pld'}.contains(key)); } 
EmailSecurityGetMessageDetectionsResponseResultSenderInfo copyWith({String? Function()? asName, int? Function()? asNumber, String? Function()? geo, String? Function()? ip, String? Function()? pld, }) { return EmailSecurityGetMessageDetectionsResponseResultSenderInfo(
  asName: asName != null ? asName() : this.asName,
  asNumber: asNumber != null ? asNumber() : this.asNumber,
  geo: geo != null ? geo() : this.geo,
  ip: ip != null ? ip() : this.ip,
  pld: pld != null ? pld() : this.pld,
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
