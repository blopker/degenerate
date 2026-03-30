// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_indicator_feeds_update_feed.dart';final class CustomIndicatorFeedsUpdateFeedResponse {const CustomIndicatorFeedsUpdateFeedResponse({this.result});

factory CustomIndicatorFeedsUpdateFeedResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsUpdateFeedResponse(
  result: json['result'] != null ? CustomIndicatorFeedsUpdateFeed.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CustomIndicatorFeedsUpdateFeed? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CustomIndicatorFeedsUpdateFeedResponse copyWith({CustomIndicatorFeedsUpdateFeed Function()? result}) { return CustomIndicatorFeedsUpdateFeedResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsUpdateFeedResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsUpdateFeedResponse(result: $result)'; } 
 }
