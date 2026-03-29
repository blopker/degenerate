// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventCreateRequestRaw {const PostEventCreateRequestRaw({required this.data, this.source, this.tlp, });

factory PostEventCreateRequestRaw.fromJson(Map<String, dynamic> json) { return PostEventCreateRequestRaw(
  data: (json['data'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  source: json['source'] as String?,
  tlp: json['tlp'] as String?,
); }

final Map<String,dynamic>? data;

final String? source;

final String? tlp;

Map<String, dynamic> toJson() { return {
  'data': ?data,
  'source': ?source,
  'tlp': ?tlp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data'); } 
PostEventCreateRequestRaw copyWith({Map<String, dynamic>? Function()? data, String Function()? source, String Function()? tlp, }) { return PostEventCreateRequestRaw(
  data: data != null ? data() : this.data,
  source: source != null ? source() : this.source,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateRequestRaw &&
          data == other.data &&
          source == other.source &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(data, source, tlp); } 
@override String toString() { return 'PostEventCreateRequestRaw(data: $data, source: $source, tlp: $tlp)'; } 
 }
