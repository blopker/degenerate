// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_document_report_error.dart';/// Details on the verification error. Present when status is `unverified`.
final class GelatoDocumentReportError2 {const GelatoDocumentReportError2({this.gelatoDocumentReportError});

factory GelatoDocumentReportError2.fromJson(Map<String, dynamic> json) { return GelatoDocumentReportError2(
  gelatoDocumentReportError: GelatoDocumentReportError.canParse(json) ? GelatoDocumentReportError.fromJson(json) : null,
); }

final GelatoDocumentReportError? gelatoDocumentReportError;

/// At least one variant must be present.
bool get isValid { return gelatoDocumentReportError != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoDocumentReportError?.toJson(),
}; } 
 }
