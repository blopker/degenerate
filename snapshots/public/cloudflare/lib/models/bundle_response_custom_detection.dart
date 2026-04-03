// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'bundle_custom_detection.dart';@immutable final class BundleResponseCustomDetection {const BundleResponseCustomDetection({this.result});

factory BundleResponseCustomDetection.fromJson(Map<String, dynamic> json) { return BundleResponseCustomDetection(
  result: json['result'] != null ? BundleCustomDetection.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final BundleCustomDetection? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
BundleResponseCustomDetection copyWith({BundleCustomDetection Function()? result}) { return BundleResponseCustomDetection(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BundleResponseCustomDetection &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'BundleResponseCustomDetection(result: $result)'; } 
 }
