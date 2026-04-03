// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';extension type const McnPolicyResult(String value) {
factory McnPolicyResult.fromJson(String json) => McnPolicyResult(json);

String toJson() => value;

}
@immutable final class McnRefreshCatalogSyncResponse {const McnRefreshCatalogSyncResponse({this.result});

factory McnRefreshCatalogSyncResponse.fromJson(Map<String, dynamic> json) { return McnRefreshCatalogSyncResponse(
  result: json['result'] != null ? McnPolicyResult.fromJson(json['result'] as String) : null,
); }

final McnPolicyResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnRefreshCatalogSyncResponse copyWith({McnPolicyResult Function()? result}) { return McnRefreshCatalogSyncResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnRefreshCatalogSyncResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnRefreshCatalogSyncResponse(result: $result)'; } 
 }
