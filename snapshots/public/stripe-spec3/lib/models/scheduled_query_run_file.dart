// GENERATED CODE - DO NOT MODIFY BY HAND

import 'file.dart';/// The file object representing the results of the query.
final class ScheduledQueryRunFile {const ScheduledQueryRunFile({this.file});

factory ScheduledQueryRunFile.fromJson(Map<String, dynamic> json) { return ScheduledQueryRunFile(
  file: File.canParse(json) ? File.fromJson(json) : null,
); }

final File? file;

/// At least one variant must be present.
bool get isValid { return file != null; } 
Map<String, dynamic> toJson() { return {
  ...?file?.toJson(),
}; } 
 }
