// GENERATED CODE - DO NOT MODIFY BY HAND

import 'images_image_direct_upload_response_result.dart';final class ImagesImageDirectUploadResponse {const ImagesImageDirectUploadResponse({this.result});

factory ImagesImageDirectUploadResponse.fromJson(Map<String, dynamic> json) { return ImagesImageDirectUploadResponse(
  result: json['result'] != null ? ImagesImageDirectUploadResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ImagesImageDirectUploadResponseResult? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ImagesImageDirectUploadResponse copyWith({ImagesImageDirectUploadResponseResult Function()? result}) { return ImagesImageDirectUploadResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageDirectUploadResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ImagesImageDirectUploadResponse(result: $result)'; } 
 }
