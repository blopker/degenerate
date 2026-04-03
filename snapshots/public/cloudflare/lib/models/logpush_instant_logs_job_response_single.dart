// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'logpush_instant_logs_job.dart';@immutable final class LogpushInstantLogsJobResponseSingle {const LogpushInstantLogsJobResponseSingle({this.result});

factory LogpushInstantLogsJobResponseSingle.fromJson(Map<String, dynamic> json) { return LogpushInstantLogsJobResponseSingle(
  result: json['result'] != null ? LogpushInstantLogsJob.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LogpushInstantLogsJob? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LogpushInstantLogsJobResponseSingle copyWith({LogpushInstantLogsJob Function()? result}) { return LogpushInstantLogsJobResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogpushInstantLogsJobResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LogpushInstantLogsJobResponseSingle(result: $result)'; } 
 }
