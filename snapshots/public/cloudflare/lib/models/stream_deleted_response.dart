// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StreamDeletedResponse {const StreamDeletedResponse({this.result});

factory StreamDeletedResponse.fromJson(Map<String, dynamic> json) { return StreamDeletedResponse(
  result: json['result'] as String?,
); }

final String? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamDeletedResponse copyWith({String Function()? result}) { return StreamDeletedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamDeletedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamDeletedResponse(result: $result)'; } 
 }
