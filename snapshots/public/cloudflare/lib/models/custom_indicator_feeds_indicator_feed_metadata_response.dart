// GENERATED CODE - DO NOT MODIFY BY HAND

import 'custom_indicator_feeds_indicator_feed_metadata.dart';final class CustomIndicatorFeedsIndicatorFeedMetadataResponse {const CustomIndicatorFeedsIndicatorFeedMetadataResponse({this.result});

factory CustomIndicatorFeedsIndicatorFeedMetadataResponse.fromJson(Map<String, dynamic> json) { return CustomIndicatorFeedsIndicatorFeedMetadataResponse(
  result: json['result'] != null ? CustomIndicatorFeedsIndicatorFeedMetadata.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final CustomIndicatorFeedsIndicatorFeedMetadata? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
CustomIndicatorFeedsIndicatorFeedMetadataResponse copyWith({CustomIndicatorFeedsIndicatorFeedMetadata Function()? result}) { return CustomIndicatorFeedsIndicatorFeedMetadataResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomIndicatorFeedsIndicatorFeedMetadataResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'CustomIndicatorFeedsIndicatorFeedMetadataResponse(result: $result)'; } 
 }
