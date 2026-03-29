// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_data_document_report_expiration_date.dart';/// Expiration date of the document.
final class GelatoDocumentReportExpirationDate {const GelatoDocumentReportExpirationDate({this.gelatoDataDocumentReportExpirationDate});

factory GelatoDocumentReportExpirationDate.fromJson(Map<String, dynamic> json) { return GelatoDocumentReportExpirationDate(
  gelatoDataDocumentReportExpirationDate: GelatoDataDocumentReportExpirationDate.canParse(json) ? GelatoDataDocumentReportExpirationDate.fromJson(json) : null,
); }

final GelatoDataDocumentReportExpirationDate? gelatoDataDocumentReportExpirationDate;

/// At least one variant must be present.
bool get isValid { return gelatoDataDocumentReportExpirationDate != null; } 
Map<String, dynamic> toJson() { return {
  ...?gelatoDataDocumentReportExpirationDate?.toJson(),
}; } 
 }
