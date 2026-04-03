// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlInfo {const UrlInfo({this.result});

factory UrlInfo.fromJson(Map<String, dynamic> json) { return UrlInfo(
  result: (json['result'] as List<dynamic>?)?.map((e) => (e as Map<String, dynamic>).map((k, v) => MapEntry(k, v))).toList(),
); }

final List<Map<String,dynamic>>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
UrlInfo copyWith({List<Map<String, dynamic>> Function()? result}) { return UrlInfo(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlInfo &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'UrlInfo(result: $result)'; } 
 }
