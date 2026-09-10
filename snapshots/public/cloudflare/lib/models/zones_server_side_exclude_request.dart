// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_server_side_exclude_value.dart';/// If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: `<!--sse-->``<!--/sse-->`. For example: `<!--sse-->`  Bad visitors won't see my phone number, 555-555-5555 `<!--/sse-->`. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036).
@immutable final class ZonesServerSideExcludeRequest {const ZonesServerSideExcludeRequest({required this.id, required this.value, });

factory ZonesServerSideExcludeRequest.fromJson(Map<String, dynamic> json) { return ZonesServerSideExcludeRequest(
  id: json['id'],
  value: ZonesServerSideExcludeValue.fromJson(json['value'] as String),
); }

/// ID of the zone setting.
final dynamic id;

/// Value of the zone setting.
final ZonesServerSideExcludeValue value;

Map<String, dynamic> toJson() { return {
  'id': id,
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesServerSideExcludeRequest copyWith({dynamic Function()? id, ZonesServerSideExcludeValue? value, }) { return ZonesServerSideExcludeRequest(
  id: id != null ? id() : this.id,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesServerSideExcludeRequest &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesServerSideExcludeRequest(id: $id, value: $value)'; } 
 }
