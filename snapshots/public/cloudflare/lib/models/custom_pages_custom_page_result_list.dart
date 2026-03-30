// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_pages_custom_page.dart';final class CustomPagesCustomPageResultList {const CustomPagesCustomPageResultList({this.result});

factory CustomPagesCustomPageResultList.fromJson(Map<String, dynamic> json) { return CustomPagesCustomPageResultList(
  result: (json['result'] as List<dynamic>?)?.map((e) => CustomPagesCustomPage.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<CustomPagesCustomPage>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CustomPagesCustomPageResultList copyWith({List<CustomPagesCustomPage> Function()? result}) { return CustomPagesCustomPageResultList(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomPagesCustomPageResultList &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'CustomPagesCustomPageResultList(result: $result)'; } 
 }
