// GENERATED CODE - DO NOT MODIFY BY HAND

import 'logcontrol_cmb_config.dart';final class LogcontrolCmbConfigResponseSingle {const LogcontrolCmbConfigResponseSingle({this.result});

factory LogcontrolCmbConfigResponseSingle.fromJson(Map<String, dynamic> json) { return LogcontrolCmbConfigResponseSingle(
  result: json['result'] != null ? LogcontrolCmbConfig.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final LogcontrolCmbConfig? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
LogcontrolCmbConfigResponseSingle copyWith({LogcontrolCmbConfig Function()? result}) { return LogcontrolCmbConfigResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LogcontrolCmbConfigResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'LogcontrolCmbConfigResponseSingle(result: $result)'; } 
 }
