// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_catalog_sync.dart';final class McnReadAccountCatalogSyncsResponse {const McnReadAccountCatalogSyncsResponse({this.result});

factory McnReadAccountCatalogSyncsResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountCatalogSyncsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => McnCatalogSync.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnCatalogSync>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnReadAccountCatalogSyncsResponse copyWith({List<McnCatalogSync> Function()? result}) { return McnReadAccountCatalogSyncsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountCatalogSyncsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'McnReadAccountCatalogSyncsResponse(result: $result)'; } 
 }
