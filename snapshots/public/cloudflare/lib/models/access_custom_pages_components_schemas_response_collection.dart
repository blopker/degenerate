// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_custom_page_without_html.dart';final class AccessCustomPagesComponentsSchemasResponseCollection {const AccessCustomPagesComponentsSchemasResponseCollection({this.result});

factory AccessCustomPagesComponentsSchemasResponseCollection.fromJson(Map<String, dynamic> json) { return AccessCustomPagesComponentsSchemasResponseCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => AccessCustomPageWithoutHtml.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AccessCustomPageWithoutHtml>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCustomPagesComponentsSchemasResponseCollection copyWith({List<AccessCustomPageWithoutHtml> Function()? result}) { return AccessCustomPagesComponentsSchemasResponseCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCustomPagesComponentsSchemasResponseCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'AccessCustomPagesComponentsSchemasResponseCollection(result: $result)'; } 
 }
