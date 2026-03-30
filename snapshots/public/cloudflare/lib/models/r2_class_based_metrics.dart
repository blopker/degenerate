// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_object_size_metrics.dart';/// Metrics based on what state they are in(uploaded or published).
final class R2ClassBasedMetrics {const R2ClassBasedMetrics({this.published, this.uploaded, });

factory R2ClassBasedMetrics.fromJson(Map<String, dynamic> json) { return R2ClassBasedMetrics(
  published: json['published'] != null ? R2ObjectSizeMetrics.fromJson(json['published'] as Map<String, dynamic>) : null,
  uploaded: json['uploaded'] != null ? R2ObjectSizeMetrics.fromJson(json['uploaded'] as Map<String, dynamic>) : null,
); }

final R2ObjectSizeMetrics? published;

final R2ObjectSizeMetrics? uploaded;

Map<String, dynamic> toJson() { return {
  if (published != null) 'published': published?.toJson(),
  if (uploaded != null) 'uploaded': uploaded?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'published', 'uploaded'}.contains(key)); } 
R2ClassBasedMetrics copyWith({R2ObjectSizeMetrics Function()? published, R2ObjectSizeMetrics Function()? uploaded, }) { return R2ClassBasedMetrics(
  published: published != null ? published() : this.published,
  uploaded: uploaded != null ? uploaded() : this.uploaded,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2ClassBasedMetrics &&
          published == other.published &&
          uploaded == other.uploaded; } 
@override int get hashCode { return Object.hash(published, uploaded); } 
@override String toString() { return 'R2ClassBasedMetrics(published: $published, uploaded: $uploaded)'; } 
 }
