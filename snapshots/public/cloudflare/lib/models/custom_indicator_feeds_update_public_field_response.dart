// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'custom_indicator_feeds_indicator_feed_item.dart';@immutable final class CustomIndicatorFeedsUpdatePublicFieldResponse {const CustomIndicatorFeedsUpdatePublicFieldResponse({this.result});

factory CustomIndicatorFeedsUpdatePublicFieldResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsUpdatePublicFieldResponse(
  result: json['result'] != null ? CustomIndicatorFeedsIndicatorFeedItem.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CustomIndicatorFeedsIndicatorFeedItem? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CustomIndicatorFeedsUpdatePublicFieldResponse copyWith({CustomIndicatorFeedsIndicatorFeedItem Function()? result}) { return CustomIndicatorFeedsUpdatePublicFieldResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsUpdatePublicFieldResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsUpdatePublicFieldResponse(result: $result)'; } 
 }
