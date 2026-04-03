// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersCreateAssetsUploadSessionResponseResult {const WorkersCreateAssetsUploadSessionResponseResult({this.buckets, this.jwt, });

factory WorkersCreateAssetsUploadSessionResponseResult.fromJson(Map<String, dynamic> json) { return WorkersCreateAssetsUploadSessionResponseResult(
  buckets: (json['buckets'] as List<dynamic>?)?.map((e) => (e as List<dynamic>).map((e) => e as String).toList()).toList(),
  jwt: json['jwt'] as String?,
); }

/// The requests to make to upload assets.
final List<List<String>>? buckets;

/// A JWT to use as authentication for uploading assets.
final String? jwt;

Map<String, dynamic> toJson() { return {
  if (buckets != null) 'buckets': buckets?.map((e) => e).toList(),
  'jwt': ?jwt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'buckets', 'jwt'}.contains(key)); } 
WorkersCreateAssetsUploadSessionResponseResult copyWith({List<List<String>> Function()? buckets, String Function()? jwt, }) { return WorkersCreateAssetsUploadSessionResponseResult(
  buckets: buckets != null ? buckets() : this.buckets,
  jwt: jwt != null ? jwt() : this.jwt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersCreateAssetsUploadSessionResponseResult &&
          listEquals(buckets, other.buckets) &&
          jwt == other.jwt; } 
@override int get hashCode { return Object.hash(Object.hashAll(buckets ?? const []), jwt); } 
@override String toString() { return 'WorkersCreateAssetsUploadSessionResponseResult(buckets: $buckets, jwt: $jwt)'; } 
 }
