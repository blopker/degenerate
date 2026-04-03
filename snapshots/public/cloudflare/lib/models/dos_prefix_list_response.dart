// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'dos_prefix.dart';@immutable final class DosPrefixListResponse {const DosPrefixListResponse({this.result});

factory DosPrefixListResponse.fromJson(Map<String, dynamic> json) { return DosPrefixListResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => DosPrefix.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<DosPrefix>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DosPrefixListResponse copyWith({List<DosPrefix> Function()? result}) { return DosPrefixListResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DosPrefixListResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'DosPrefixListResponse(result: $result)'; } 
 }
