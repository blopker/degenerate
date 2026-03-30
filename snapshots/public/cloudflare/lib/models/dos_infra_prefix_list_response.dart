// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_infra_prefix.dart';final class DosInfraPrefixListResponse {const DosInfraPrefixListResponse({this.result});

factory DosInfraPrefixListResponse.fromJson(Map<String, dynamic> json) { return DosInfraPrefixListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosInfraPrefix.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosInfraPrefix>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosInfraPrefixListResponse copyWith({List<DosInfraPrefix> Function()? result}) { return DosInfraPrefixListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosInfraPrefixListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosInfraPrefixListResponse(result: $result)'; } 
 }
