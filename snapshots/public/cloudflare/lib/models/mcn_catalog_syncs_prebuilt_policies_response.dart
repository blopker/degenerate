// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_catalog_syncs_prebuilt_policy.dart';@immutable final class McnCatalogSyncsPrebuiltPoliciesResponse {const McnCatalogSyncsPrebuiltPoliciesResponse({this.result});

factory McnCatalogSyncsPrebuiltPoliciesResponse.fromJson(Map<String, dynamic> json) { return McnCatalogSyncsPrebuiltPoliciesResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => McnCatalogSyncsPrebuiltPolicy.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnCatalogSyncsPrebuiltPolicy>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnCatalogSyncsPrebuiltPoliciesResponse copyWith({List<McnCatalogSyncsPrebuiltPolicy> Function()? result}) { return McnCatalogSyncsPrebuiltPoliciesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnCatalogSyncsPrebuiltPoliciesResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'McnCatalogSyncsPrebuiltPoliciesResponse(result: $result)'; } 
 }
