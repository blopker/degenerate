// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DlpDocumentFingerprintsUploadRequest {const DlpDocumentFingerprintsUploadRequest({required this.file});

factory DlpDocumentFingerprintsUploadRequest.fromJson(Map<String, dynamic> json) { return DlpDocumentFingerprintsUploadRequest(
  file: base64Decode(json['file'] as String),
); }

final Uint8List file;

Map<String, dynamic> toJson() { return {
  'file': base64Encode(file),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('file'); } 
DlpDocumentFingerprintsUploadRequest copyWith({Uint8List? file}) { return DlpDocumentFingerprintsUploadRequest(
  file: file ?? this.file,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DlpDocumentFingerprintsUploadRequest &&
          file == other.file; } 
@override int get hashCode { return file.hashCode; } 
@override String toString() { return 'DlpDocumentFingerprintsUploadRequest(file: $file)'; } 
 }
