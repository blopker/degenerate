// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_custom_detection.dart';final class BundleResponseCustomDetectionCollection {const BundleResponseCustomDetectionCollection({this.result});

factory BundleResponseCustomDetectionCollection.fromJson(Map<String, dynamic> json) { return BundleResponseCustomDetectionCollection(
  result: (json['result'] as List<dynamic>?)?.map((e) => BundleCustomDetection.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<BundleCustomDetection>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BundleResponseCustomDetectionCollection copyWith({List<BundleCustomDetection> Function()? result}) { return BundleResponseCustomDetectionCollection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleResponseCustomDetectionCollection &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'BundleResponseCustomDetectionCollection(result: $result)'; } 
 }
