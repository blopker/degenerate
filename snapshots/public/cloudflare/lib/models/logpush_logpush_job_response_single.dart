// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_logpush_job.dart';@immutable final class LogpushLogpushJobResponseSingle {const LogpushLogpushJobResponseSingle({this.result});

factory LogpushLogpushJobResponseSingle.fromJson(Map<String, dynamic> json) { return LogpushLogpushJobResponseSingle(
  result: json['result'] != null ? LogpushLogpushJob.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LogpushLogpushJob? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LogpushLogpushJobResponseSingle copyWith({LogpushLogpushJob Function()? result}) { return LogpushLogpushJobResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushLogpushJobResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LogpushLogpushJobResponseSingle(result: $result)'; } 
 }
