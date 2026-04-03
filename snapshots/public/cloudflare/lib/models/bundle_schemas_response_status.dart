// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_schemas_status.dart';@immutable final class BundleSchemasResponseStatus {const BundleSchemasResponseStatus({this.result});

factory BundleSchemasResponseStatus.fromJson(Map<String, dynamic> json) { return BundleSchemasResponseStatus(
  result: json['result'] != null ? BundleSchemasStatus.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final BundleSchemasStatus? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BundleSchemasResponseStatus copyWith({BundleSchemasStatus Function()? result}) { return BundleSchemasResponseStatus(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleSchemasResponseStatus &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'BundleSchemasResponseStatus(result: $result)'; } 
 }
