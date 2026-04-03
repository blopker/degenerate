// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dlp_document_fingerprint.dart';@immutable final class DlpDocumentFingerprintsReadAllResponse {const DlpDocumentFingerprintsReadAllResponse({this.result});

factory DlpDocumentFingerprintsReadAllResponse.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsReadAllResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DlpDocumentFingerprint.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DlpDocumentFingerprint>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DlpDocumentFingerprintsReadAllResponse copyWith({List<DlpDocumentFingerprint> Function()? result}) { return DlpDocumentFingerprintsReadAllResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsReadAllResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DlpDocumentFingerprintsReadAllResponse(result: $result)'; } 
 }
