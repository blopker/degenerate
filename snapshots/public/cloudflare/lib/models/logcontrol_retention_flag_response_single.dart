// GENERATED CODE - DO NOT MODIFY BY HAND

import 'logcontrol_retention_flag.dart';final class LogcontrolRetentionFlagResponseSingle {const LogcontrolRetentionFlagResponseSingle({this.result});

factory LogcontrolRetentionFlagResponseSingle.fromJson(Map<String, dynamic> json) { return LogcontrolRetentionFlagResponseSingle(
  result: json['result'] != null ? LogcontrolRetentionFlag.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LogcontrolRetentionFlag? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LogcontrolRetentionFlagResponseSingle copyWith({LogcontrolRetentionFlag Function()? result}) { return LogcontrolRetentionFlagResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogcontrolRetentionFlagResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LogcontrolRetentionFlagResponseSingle(result: $result)'; } 
 }
