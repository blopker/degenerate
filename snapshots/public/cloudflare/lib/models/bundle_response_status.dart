// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_status.dart';@immutable final class BundleResponseStatus {const BundleResponseStatus({this.result});

factory BundleResponseStatus.fromJson(Map<String, dynamic> json) { return BundleResponseStatus(
  result: json['result'] != null ? BundleStatus.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final BundleStatus? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BundleResponseStatus copyWith({BundleStatus Function()? result}) { return BundleResponseStatus(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleResponseStatus &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'BundleResponseStatus(result: $result)'; } 
 }
