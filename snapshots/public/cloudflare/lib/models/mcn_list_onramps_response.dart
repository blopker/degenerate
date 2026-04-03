// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_onramp.dart';@immutable final class McnListOnrampsResponse {const McnListOnrampsResponse({this.result});

factory McnListOnrampsResponse.fromJson(Map<String, dynamic> json) { return McnListOnrampsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => McnOnramp.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnOnramp>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnListOnrampsResponse copyWith({List<McnOnramp> Function()? result}) { return McnListOnrampsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnListOnrampsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'McnListOnrampsResponse(result: $result)'; } 
 }
