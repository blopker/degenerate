// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DeleteDexRuleResponse {const DeleteDexRuleResponse({this.result});

factory DeleteDexRuleResponse.fromJson(Map<String, dynamic> json) { return DeleteDexRuleResponse(
  result: json['result'] as bool?,
); }

final bool? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
DeleteDexRuleResponse copyWith({bool? Function()? result}) { return DeleteDexRuleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DeleteDexRuleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'DeleteDexRuleResponse(result: $result)'; } 
 }
