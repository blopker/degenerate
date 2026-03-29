// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_mitigation_appeal.dart';final class AbuseReportsMitigationAppealRequest {const AbuseReportsMitigationAppealRequest({required this.appeals});

factory AbuseReportsMitigationAppealRequest.fromJson(Map<String, dynamic> json) { return AbuseReportsMitigationAppealRequest(
  appeals: (json['appeals'] as List<dynamic>).map((e) => AbuseReportsMitigationAppeal.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// List of mitigations to appeal.
final List<AbuseReportsMitigationAppeal> appeals;

Map<String, dynamic> toJson() { return {
  'appeals': appeals.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('appeals'); } 
AbuseReportsMitigationAppealRequest copyWith({List<AbuseReportsMitigationAppeal>? appeals}) { return AbuseReportsMitigationAppealRequest(
  appeals: appeals ?? this.appeals,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AbuseReportsMitigationAppealRequest &&
          listEquals(appeals, other.appeals); } 
@override int get hashCode { return Object.hashAll(appeals).hashCode; } 
@override String toString() { return 'AbuseReportsMitigationAppealRequest(appeals: $appeals)'; } 
 }
