// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_permissions_update.dart';@immutable final class CustomIndicatorFeedsPermissionsResponse {const CustomIndicatorFeedsPermissionsResponse({this.result});

factory CustomIndicatorFeedsPermissionsResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsPermissionsResponse(
  result: json['result'] != null ? CustomIndicatorFeedsPermissionsUpdate.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CustomIndicatorFeedsPermissionsUpdate? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CustomIndicatorFeedsPermissionsResponse copyWith({CustomIndicatorFeedsPermissionsUpdate Function()? result}) { return CustomIndicatorFeedsPermissionsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsPermissionsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsPermissionsResponse(result: $result)'; } 
 }
