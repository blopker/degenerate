// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dnssec_dnssec.dart';@immutable final class DnssecDnssecResponseSingle {const DnssecDnssecResponseSingle({this.result});

factory DnssecDnssecResponseSingle.fromJson(Map<String, dynamic> json) { return DnssecDnssecResponseSingle(
  result: json['result'] != null ? DnssecDnssec.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final DnssecDnssec? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DnssecDnssecResponseSingle copyWith({DnssecDnssec Function()? result}) { return DnssecDnssecResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DnssecDnssecResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DnssecDnssecResponseSingle(result: $result)'; } 
 }
