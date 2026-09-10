// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cvss_severities_cvss.dart';import 'cvss_severities_cvss2.dart';@immutable final class CvssSeverities {const CvssSeverities({this.cvssV3 = const Omittable.absent(), this.cvssV4 = const Omittable.absent(), });

factory CvssSeverities.fromJson(Map<String, dynamic> json) { return CvssSeverities(
  cvssV3: json.containsKey('cvss_v3') ? Omittable(json['cvss_v3'] != null ? CvssSeveritiesCvss.fromJson(json['cvss_v3'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  cvssV4: json.containsKey('cvss_v4') ? Omittable(json['cvss_v4'] != null ? CvssSeveritiesCvss2.fromJson(json['cvss_v4'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

final Omittable<CvssSeveritiesCvss?> cvssV3;

final Omittable<CvssSeveritiesCvss2?> cvssV4;

Map<String, dynamic> toJson() { return {
  if (cvssV3.isPresent) 'cvss_v3': cvssV3.value?.toJson(),
  if (cvssV4.isPresent) 'cvss_v4': cvssV4.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cvss_v3', 'cvss_v4'}.contains(key)); } 
CvssSeverities copyWith({Omittable<CvssSeveritiesCvss?>? cvssV3, Omittable<CvssSeveritiesCvss2?>? cvssV4, }) { return CvssSeverities(
  cvssV3: cvssV3 ?? this.cvssV3,
  cvssV4: cvssV4 ?? this.cvssV4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CvssSeverities &&
          cvssV3 == other.cvssV3 &&
          cvssV4 == other.cvssV4; } 
@override int get hashCode { return Object.hash(cvssV3, cvssV4); } 
@override String toString() { return 'CvssSeverities(cvssV3: $cvssV3, cvssV4: $cvssV4)'; } 
 }
