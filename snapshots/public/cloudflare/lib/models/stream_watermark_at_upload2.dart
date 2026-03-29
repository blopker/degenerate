// GENERATED CODE - DO NOT MODIFY BY HAND

final class StreamWatermarkAtUpload2 {const StreamWatermarkAtUpload2({this.uid});

factory StreamWatermarkAtUpload2.fromJson(Map<String, dynamic> json) { return StreamWatermarkAtUpload2(
  uid: json['uid'] as String?,
); }

/// The unique identifier for the watermark profile.
final String? uid;

Map<String, dynamic> toJson() { return {
  'uid': ?uid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'uid'}.contains(key)); } 
StreamWatermarkAtUpload2 copyWith({String Function()? uid}) { return StreamWatermarkAtUpload2(
  uid: uid != null ? uid() : this.uid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StreamWatermarkAtUpload2 &&
          uid == other.uid; } 
@override int get hashCode { return uid.hashCode; } 
@override String toString() { return 'StreamWatermarkAtUpload2(uid: $uid)'; } 
 }
