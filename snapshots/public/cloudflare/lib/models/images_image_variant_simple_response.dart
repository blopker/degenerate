// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_image_variant_response.dart';@immutable final class ImagesImageVariantSimpleResponse {const ImagesImageVariantSimpleResponse({this.result});

factory ImagesImageVariantSimpleResponse.fromJson(Map<String, dynamic> json) { return ImagesImageVariantSimpleResponse(
  result: json['result'] != null ? ImagesImageVariantResponse.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ImagesImageVariantResponse? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ImagesImageVariantSimpleResponse copyWith({ImagesImageVariantResponse Function()? result}) { return ImagesImageVariantSimpleResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageVariantSimpleResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ImagesImageVariantSimpleResponse(result: $result)'; } 
 }
