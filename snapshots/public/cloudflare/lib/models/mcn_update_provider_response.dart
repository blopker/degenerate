// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mcn_provider.dart';@immutable final class McnUpdateProviderResponse {const McnUpdateProviderResponse({this.result});

factory McnUpdateProviderResponse.fromJson(Map<String, dynamic> json) { return McnUpdateProviderResponse(
  result: json['result'] != null ? McnProvider.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final McnProvider? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
McnUpdateProviderResponse copyWith({McnProvider Function()? result}) { return McnUpdateProviderResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is McnUpdateProviderResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'McnUpdateProviderResponse(result: $result)'; } 
 }
