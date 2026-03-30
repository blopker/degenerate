// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dlp_document_fingerprint.dart';final class DlpDocumentFingerprintsUpdateResponse {const DlpDocumentFingerprintsUpdateResponse({this.result});

factory DlpDocumentFingerprintsUpdateResponse.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsUpdateResponse(
  result: json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDocumentFingerprint? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDocumentFingerprintsUpdateResponse copyWith({DlpDocumentFingerprint Function()? result}) { return DlpDocumentFingerprintsUpdateResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsUpdateResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDocumentFingerprintsUpdateResponse(result: $result)'; } 
 }
