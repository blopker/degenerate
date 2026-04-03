// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';extension type const McnResourcesCatalogPolicyPreview(String value) {
factory McnResourcesCatalogPolicyPreview.fromJson(String json) => McnResourcesCatalogPolicyPreview(json);

String toJson() => value;

}
@immutable final class McnResourcesCatalogPolicyPreviewResponse {const McnResourcesCatalogPolicyPreviewResponse({this.result});

factory McnResourcesCatalogPolicyPreviewResponse.fromJson(Map<String, dynamic> json) { return McnResourcesCatalogPolicyPreviewResponse(
  result: json['result'] != null ? McnResourcesCatalogPolicyPreview.fromJson(json['result'] as String) : null,
); }

final McnResourcesCatalogPolicyPreview? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnResourcesCatalogPolicyPreviewResponse copyWith({McnResourcesCatalogPolicyPreview Function()? result}) { return McnResourcesCatalogPolicyPreviewResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnResourcesCatalogPolicyPreviewResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnResourcesCatalogPolicyPreviewResponse(result: $result)'; } 
 }
