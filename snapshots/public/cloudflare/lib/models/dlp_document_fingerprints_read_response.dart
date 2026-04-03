// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_document_fingerprint.dart';@immutable final class DlpDocumentFingerprintsReadResponse {const DlpDocumentFingerprintsReadResponse({this.result});

factory DlpDocumentFingerprintsReadResponse.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsReadResponse(
  result: json['result'] != null ? DlpDocumentFingerprint.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDocumentFingerprint? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDocumentFingerprintsReadResponse copyWith({DlpDocumentFingerprint Function()? result}) { return DlpDocumentFingerprintsReadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsReadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDocumentFingerprintsReadResponse(result: $result)'; } 
 }
