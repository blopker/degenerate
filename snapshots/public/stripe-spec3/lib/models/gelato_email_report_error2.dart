// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_email_report_error.dart';/// Details on the verification error. Present when status is `unverified`.
final class GelatoEmailReportError2 {const GelatoEmailReportError2({this.gelatoEmailReportError});

factory GelatoEmailReportError2.fromJson(Map<String, dynamic> json) { return GelatoEmailReportError2(
  gelatoEmailReportError: GelatoEmailReportError.canParse(json) ? GelatoEmailReportError.fromJson(json) : null,
); }

final GelatoEmailReportError? gelatoEmailReportError;

/// At least one variant must be present.
bool get isValid { return gelatoEmailReportError != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoEmailReportError?.toJson(),
}; } 
 }
