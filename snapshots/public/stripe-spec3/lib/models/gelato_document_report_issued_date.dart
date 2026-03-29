// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_data_document_report_issued_date.dart';/// Issued date of the document.
final class GelatoDocumentReportIssuedDate {const GelatoDocumentReportIssuedDate({this.gelatoDataDocumentReportIssuedDate});

factory GelatoDocumentReportIssuedDate.fromJson(Map<String, dynamic> json) { return GelatoDocumentReportIssuedDate(
  gelatoDataDocumentReportIssuedDate: GelatoDataDocumentReportIssuedDate.canParse(json) ? GelatoDataDocumentReportIssuedDate.fromJson(json) : null,
); }

final GelatoDataDocumentReportIssuedDate? gelatoDataDocumentReportIssuedDate;

/// At least one variant must be present.
bool get isValid { return gelatoDataDocumentReportIssuedDate != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoDataDocumentReportIssuedDate?.toJson(),
}; } 
 }
