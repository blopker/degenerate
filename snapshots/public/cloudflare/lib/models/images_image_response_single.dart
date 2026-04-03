// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'images_image.dart';@immutable final class ImagesImageResponseSingle {const ImagesImageResponseSingle({this.result});

factory ImagesImageResponseSingle.fromJson(Map<String, dynamic> json) { return ImagesImageResponseSingle(
  result: json['result'] != null ? ImagesImage.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ImagesImage? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ImagesImageResponseSingle copyWith({ImagesImage Function()? result}) { return ImagesImageResponseSingle(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ImagesImageResponseSingle &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ImagesImageResponseSingle(result: $result)'; } 
 }
