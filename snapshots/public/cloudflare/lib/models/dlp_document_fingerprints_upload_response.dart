// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_document_fingerprint_upload.dart';@immutable final class DlpDocumentFingerprintsUploadResponse {const DlpDocumentFingerprintsUploadResponse({this.result});

factory DlpDocumentFingerprintsUploadResponse.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsUploadResponse(
  result: json['result'] != null ? DlpDocumentFingerprintUpload.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DlpDocumentFingerprintUpload? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDocumentFingerprintsUploadResponse copyWith({DlpDocumentFingerprintUpload Function()? result}) { return DlpDocumentFingerprintsUploadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsUploadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DlpDocumentFingerprintsUploadResponse(result: $result)'; } 
 }
