// GENERATED CODE - DO NOT MODIFY BY HAND

final class PatchEventRawUpdateRequest {const PatchEventRawUpdateRequest({this.data, this.source, this.tlp, });

factory PatchEventRawUpdateRequest.fromJson(Map<String, dynamic> json) { return PatchEventRawUpdateRequest(
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
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'data', 'source', 'tlp'}.contains(key)); } 
PatchEventRawUpdateRequest copyWith({Map<String, dynamic> Function()? data, String Function()? source, String Function()? tlp, }) { return PatchEventRawUpdateRequest(
  data: data != null ? data() : this.data,
  source: source != null ? source() : this.source,
  tlp: tlp != null ? tlp() : this.tlp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventRawUpdateRequest &&
          data == other.data &&
          source == other.source &&
          tlp == other.tlp; } 
@override int get hashCode { return Object.hash(data, source, tlp); } 
@override String toString() { return 'PatchEventRawUpdateRequest(data: $data, source: $source, tlp: $tlp)'; } 
 }
