// GENERATED CODE - DO NOT MODIFY BY HAND

import 'gelato_report_document_options.dart';import 'gelato_report_id_number_options.dart';/// 
final class GelatoVerificationReportOptions {const GelatoVerificationReportOptions({this.document, this.idNumber, });

factory GelatoVerificationReportOptions.fromJson(Map<String, dynamic> json) { return GelatoVerificationReportOptions(
  document: json['document'] != null ? GelatoReportDocumentOptions.fromJson(json['document'] as Map<String, dynamic>) : null,
  idNumber: json['id_number'] != null ? GelatoReportIdNumberOptions.fromJson(json['id_number'] as Map<String, dynamic>) : null,
); }

final GelatoReportDocumentOptions? document;

final GelatoReportIdNumberOptions? idNumber;

Map<String, dynamic> toJson() { return {
  if (document != null) 'document': document?.toJson(),
  if (idNumber != null) 'id_number': idNumber?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GelatoVerificationReportOptions copyWith({GelatoReportDocumentOptions Function()? document, GelatoReportIdNumberOptions Function()? idNumber, }) { return GelatoVerificationReportOptions(
  document: document != null ? document() : this.document,
  idNumber: idNumber != null ? idNumber() : this.idNumber,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GelatoVerificationReportOptions &&
          document == other.document &&
          idNumber == other.idNumber; } 
@override int get hashCode { return Object.hash(document, idNumber); } 
@override String toString() { return 'GelatoVerificationReportOptions(document: $document, idNumber: $idNumber)'; } 
 }
