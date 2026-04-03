// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'cvss_severities_cvss.dart';import 'cvss_severities_cvss2.dart';@immutable final class CvssSeverities {const CvssSeverities({this.cvssV3, this.cvssV4, });

factory CvssSeverities.fromJson(Map<String, dynamic> json) { return CvssSeverities(
  cvssV3: json['cvss_v3'] != null ? CvssSeveritiesCvss.fromJson(json['cvss_v3'] as Map<String, dynamic>) : null,
  cvssV4: json['cvss_v4'] != null ? CvssSeveritiesCvss2.fromJson(json['cvss_v4'] as Map<String, dynamic>) : null,
); }

final CvssSeveritiesCvss? cvssV3;

final CvssSeveritiesCvss2? cvssV4;

Map<String, dynamic> toJson() { return {
  if (cvssV3 != null) 'cvss_v3': cvssV3?.toJson(),
  if (cvssV4 != null) 'cvss_v4': cvssV4?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cvss_v3', 'cvss_v4'}.contains(key)); } 
CvssSeverities copyWith({CvssSeveritiesCvss? Function()? cvssV3, CvssSeveritiesCvss2? Function()? cvssV4, }) { return CvssSeverities(
  cvssV3: cvssV3 != null ? cvssV3() : this.cvssV3,
  cvssV4: cvssV4 != null ? cvssV4() : this.cvssV4,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CvssSeverities &&
          cvssV3 == other.cvssV3 &&
          cvssV4 == other.cvssV4; } 
@override int get hashCode { return Object.hash(cvssV3, cvssV4); } 
@override String toString() { return 'CvssSeverities(cvssV3: $cvssV3, cvssV4: $cvssV4)'; } 
 }
