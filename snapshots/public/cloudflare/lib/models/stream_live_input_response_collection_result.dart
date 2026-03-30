// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stream_live_input_object_without_url.dart';final class StreamLiveInputResponseCollectionResult {const StreamLiveInputResponseCollectionResult({this.liveInputs, this.range, this.total, });

factory StreamLiveInputResponseCollectionResult.fromJson(Map<String, dynamic> json) { return StreamLiveInputResponseCollectionResult(
  liveInputs: (json['liveInputs'] as List<dynamic>?)?.map((e) => StreamLiveInputObjectWithoutUrl.fromJson(e as Map<String, dynamic>)).toList(),
  range: json['range'] != null ? (json['range'] as num).toInt() : null,
  total: json['total'] != null ? (json['total'] as num).toInt() : null,
); }

final List<StreamLiveInputObjectWithoutUrl>? liveInputs;

/// The total number of remaining live inputs based on cursor position.
final int? range;

/// The total number of live inputs that match the provided filters.
final int? total;

Map<String, dynamic> toJson() { return {
  if (liveInputs != null) 'liveInputs': liveInputs?.map((e) => e.toJson()).toList(),
  'range': ?range,
  'total': ?total,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'liveInputs', 'range', 'total'}.contains(key)); } 
StreamLiveInputResponseCollectionResult copyWith({List<StreamLiveInputObjectWithoutUrl> Function()? liveInputs, int Function()? range, int Function()? total, }) { return StreamLiveInputResponseCollectionResult(
  liveInputs: liveInputs != null ? liveInputs() : this.liveInputs,
  range: range != null ? range() : this.range,
  total: total != null ? total() : this.total,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamLiveInputResponseCollectionResult &&
          listEquals(liveInputs, other.liveInputs) &&
          range == other.range &&
          total == other.total; } 
@override int get hashCode { return Object.hash(Object.hashAll(liveInputs ?? const []), range, total); } 
@override String toString() { return 'StreamLiveInputResponseCollectionResult(liveInputs: $liveInputs, range: $range, total: $total)'; } 
 }
