// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StreamWatermarkAtUpload {const StreamWatermarkAtUpload({this.uid});

factory StreamWatermarkAtUpload.fromJson(Map<String, dynamic> json) { return StreamWatermarkAtUpload(
  uid: json['uid'] as String?,
); }

/// The unique identifier for the watermark profile.
final String? uid;

Map<String, dynamic> toJson() { return {
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'uid'}.contains(key)); } 
StreamWatermarkAtUpload copyWith({String Function()? uid}) { return StreamWatermarkAtUpload(
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWatermarkAtUpload &&
          uid == other.uid; } 
@override int get hashCode { return uid.hashCode; } 
@override String toString() { return 'StreamWatermarkAtUpload(uid: $uid)'; } 
 }
