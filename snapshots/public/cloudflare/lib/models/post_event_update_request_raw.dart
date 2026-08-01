// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventUpdateRequestRaw {const PostEventUpdateRequestRaw({this.data = const Omittable.absent(), this.source, this.tlp, });

factory PostEventUpdateRequestRaw.fromJson(Map<String, dynamic> json) { return PostEventUpdateRequestRaw(
  data: json.containsKey('data') ? Omittable(json['data'] as Map<String, dynamic>?) : const Omittable.absent(),
  source: json['source'] as String?,
  tlp: json['tlp'] as String?,
); }

final Omittable<Map<String,dynamic>?> data;

final String? source;

final String? tlp;

Map<String, dynamic> toJson() { return {
  if (data.isPresent) 'data': data.value,
  'source': ?source,
  'tlp': ?tlp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'source', 'tlp'}.contains(key)); } 
PostEventUpdateRequestRaw copyWith({Omittable<Map<String,dynamic>?>? data, String? Function()? source, String? Function()? tlp, }) { return PostEventUpdateRequestRaw(
  data: data ?? this.data,
  source: source != null ? source() : this.source,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventUpdateRequestRaw &&
          data == other.data &&
          source == other.source &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(data, source, tlp); } 
@override String toString() { return 'PostEventUpdateRequestRaw(data: $data, source: $source, tlp: $tlp)'; } 
 }
