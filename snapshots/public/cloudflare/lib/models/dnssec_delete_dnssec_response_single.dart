// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DnssecDeleteDnssecResponseSingle {const DnssecDeleteDnssecResponseSingle({this.result});

factory DnssecDeleteDnssecResponseSingle.fromJson(Map<String, dynamic> json) { return DnssecDeleteDnssecResponseSingle(
  result: json['result'] as String?,
); }

final String? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnssecDeleteDnssecResponseSingle copyWith({String Function()? result}) { return DnssecDeleteDnssecResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecDeleteDnssecResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnssecDeleteDnssecResponseSingle(result: $result)'; } 
 }
