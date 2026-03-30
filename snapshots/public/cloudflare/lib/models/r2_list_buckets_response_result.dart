// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_bucket.dart';final class R2ListBucketsResponseResult {const R2ListBucketsResponseResult({this.buckets});

factory R2ListBucketsResponseResult.fromJson(Map<String, dynamic> json) { return R2ListBucketsResponseResult(
  buckets: (json['buckets'] as List<dynamic>?)?.map((e) => R2Bucket.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<R2Bucket>? buckets;

Map<String, dynamic> toJson() { return {
  if (buckets != null) 'buckets': buckets?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'buckets'}.contains(key)); } 
R2ListBucketsResponseResult copyWith({List<R2Bucket> Function()? buckets}) { return R2ListBucketsResponseResult(
  buckets: buckets != null ? buckets() : this.buckets,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2ListBucketsResponseResult &&
          listEquals(buckets, other.buckets); } 
@override int get hashCode { return Object.hashAll(buckets ?? const []).hashCode; } 
@override String toString() { return 'R2ListBucketsResponseResult(buckets: $buckets)'; } 
 }
