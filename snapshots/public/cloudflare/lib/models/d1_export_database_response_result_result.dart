// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Only present when status = 'complete'
@immutable final class D1ExportDatabaseResponseResultResult {const D1ExportDatabaseResponseResultResult({this.filename, this.signedUrl, });

factory D1ExportDatabaseResponseResultResult.fromJson(Map<String, dynamic> json) { return D1ExportDatabaseResponseResultResult(
  filename: json['filename'] as String?,
  signedUrl: json['signed_url'] as String?,
); }

/// The generated SQL filename.
final String? filename;

/// The URL to download the exported SQL. Available for one hour.
final String? signedUrl;

Map<String, dynamic> toJson() { return {
  'filename': ?filename,
  'signed_url': ?signedUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'filename', 'signed_url'}.contains(key)); } 
D1ExportDatabaseResponseResultResult copyWith({String? Function()? filename, String? Function()? signedUrl, }) { return D1ExportDatabaseResponseResultResult(
  filename: filename != null ? filename() : this.filename,
  signedUrl: signedUrl != null ? signedUrl() : this.signedUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is D1ExportDatabaseResponseResultResult &&
          filename == other.filename &&
          signedUrl == other.signedUrl; } 
@override int get hashCode { return Object.hash(filename, signedUrl); } 
@override String toString() { return 'D1ExportDatabaseResponseResultResult(filename: $filename, signedUrl: $signedUrl)'; } 
 }
