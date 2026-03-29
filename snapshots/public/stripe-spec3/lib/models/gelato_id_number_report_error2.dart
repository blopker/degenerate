// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_id_number_report_error.dart';/// Details on the verification error. Present when status is `unverified`.
final class GelatoIdNumberReportError2 {const GelatoIdNumberReportError2({this.gelatoIdNumberReportError});

factory GelatoIdNumberReportError2.fromJson(Map<String, dynamic> json) { return GelatoIdNumberReportError2(
  gelatoIdNumberReportError: GelatoIdNumberReportError.canParse(json) ? GelatoIdNumberReportError.fromJson(json) : null,
); }

final GelatoIdNumberReportError? gelatoIdNumberReportError;

/// At least one variant must be present.
bool get isValid { return gelatoIdNumberReportError != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoIdNumberReportError?.toJson(),
}; } 
 }
