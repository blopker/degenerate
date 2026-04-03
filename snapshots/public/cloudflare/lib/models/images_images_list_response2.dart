// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_images_list_response2_result.dart';@immutable final class ImagesImagesListResponse2 {const ImagesImagesListResponse2({this.result});

factory ImagesImagesListResponse2.fromJson(Map<String, dynamic> json) { return ImagesImagesListResponse2(
  result: json['result'] != null ? ImagesImagesListResponse2Result.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ImagesImagesListResponse2Result? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ImagesImagesListResponse2 copyWith({ImagesImagesListResponse2Result Function()? result}) { return ImagesImagesListResponse2(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImagesListResponse2 &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ImagesImagesListResponse2(result: $result)'; } 
 }
