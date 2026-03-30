// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_provider.dart';final class McnReadAccountProvidersResponse {const McnReadAccountProvidersResponse({this.result});

factory McnReadAccountProvidersResponse.fromJson(Map<String, dynamic> json) { return McnReadAccountProvidersResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => McnProvider.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<McnProvider>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnReadAccountProvidersResponse copyWith({List<McnProvider> Function()? result}) { return McnReadAccountProvidersResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnReadAccountProvidersResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'McnReadAccountProvidersResponse(result: $result)'; } 
 }
