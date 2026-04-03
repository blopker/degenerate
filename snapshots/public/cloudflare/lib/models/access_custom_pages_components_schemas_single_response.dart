// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_custom_page.dart';@immutable final class AccessCustomPagesComponentsSchemasSingleResponse {const AccessCustomPagesComponentsSchemasSingleResponse({this.result});

factory AccessCustomPagesComponentsSchemasSingleResponse.fromJson(Map<String, dynamic> json) { return AccessCustomPagesComponentsSchemasSingleResponse(
  result: json['result'] != null ? AccessCustomPage.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final AccessCustomPage? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
AccessCustomPagesComponentsSchemasSingleResponse copyWith({AccessCustomPage Function()? result}) { return AccessCustomPagesComponentsSchemasSingleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCustomPagesComponentsSchemasSingleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'AccessCustomPagesComponentsSchemasSingleResponse(result: $result)'; } 
 }
