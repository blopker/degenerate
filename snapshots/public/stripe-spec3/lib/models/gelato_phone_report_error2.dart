// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_phone_report_error.dart';/// Details on the verification error. Present when status is `unverified`.
final class GelatoPhoneReportError2 {const GelatoPhoneReportError2({this.gelatoPhoneReportError});

factory GelatoPhoneReportError2.fromJson(Map<String, dynamic> json) { return GelatoPhoneReportError2(
  gelatoPhoneReportError: GelatoPhoneReportError.canParse(json) ? GelatoPhoneReportError.fromJson(json) : null,
); }

final GelatoPhoneReportError? gelatoPhoneReportError;

/// At least one variant must be present.
bool get isValid { return gelatoPhoneReportError != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoPhoneReportError?.toJson(),
}; } 
 }
