// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StreamWatermarkProfileDeleteWatermarkProfilesResponse {const StreamWatermarkProfileDeleteWatermarkProfilesResponse({this.result});

factory StreamWatermarkProfileDeleteWatermarkProfilesResponse.fromJson(Map<String, dynamic> json) { return StreamWatermarkProfileDeleteWatermarkProfilesResponse(
  result: json['result'] as String?,
); }

final String? result;

Map<String, dynamic> toJson() { return {
  'result': ?result,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
StreamWatermarkProfileDeleteWatermarkProfilesResponse copyWith({String Function()? result}) { return StreamWatermarkProfileDeleteWatermarkProfilesResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWatermarkProfileDeleteWatermarkProfilesResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'StreamWatermarkProfileDeleteWatermarkProfilesResponse(result: $result)'; } 
 }
