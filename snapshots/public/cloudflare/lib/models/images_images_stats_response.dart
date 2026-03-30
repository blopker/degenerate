// GENERATED CODE - DO NOT MODIFY BY HAND

import 'images_images_stats.dart';final class ImagesImagesStatsResponse {const ImagesImagesStatsResponse({this.result});

factory ImagesImagesStatsResponse.fromJson(Map<String, dynamic> json) { return ImagesImagesStatsResponse(
  result: json['result'] != null ? ImagesImagesStats.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ImagesImagesStats? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ImagesImagesStatsResponse copyWith({ImagesImagesStats Function()? result}) { return ImagesImagesStatsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImagesStatsResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ImagesImagesStatsResponse(result: $result)'; } 
 }
