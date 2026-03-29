// GENERATED CODE - DO NOT MODIFY BY HAND

import 'file.dart';/// The file object representing the result of the report run (populated when
///  `status=succeeded`).
final class ReportingReportRunResult {const ReportingReportRunResult({this.file});

factory ReportingReportRunResult.fromJson(Map<String, dynamic> json) { return ReportingReportRunResult(
  file: File.canParse(json) ? File.fromJson(json) : null,
); }

final File? file;

/// At least one variant must be present.
bool get isValid { return file != null; } 
Map<String, dynamic> toJson() { return {
  ...?file?.toJson(),
}; } 
 }
