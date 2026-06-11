// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zones_server_side_exclude_value.dart';/// If there is sensitive content on your website that you want visible to real visitors, but that you want to hide from suspicious visitors, all you have to do is wrap the content with Cloudflare SSE tags. Wrap any content that you want to be excluded from suspicious visitors in the following SSE tags: `<!--sse-->``<!--/sse-->`. For example: `<!--sse-->`  Bad visitors won't see my phone number, 555-555-5555 `<!--/sse-->`. Note: SSE only will work with HTML. If you have HTML minification enabled, you won't see the SSE tags in your HTML source when it's served through Cloudflare. SSE will still function in this case, as Cloudflare's HTML minification and SSE functionality occur on-the-fly as the resource moves through our network to the visitor's computer. (https://support.cloudflare.com/hc/en-us/articles/200170036).
@immutable final class ZonesServerSideExclude {const ZonesServerSideExclude({required this.id, required this.value, this.editable = true, this.modifiedOn, });

factory ZonesServerSideExclude.fromJson(Map<String, dynamic> json) { return ZonesServerSideExclude(
  editable: json.containsKey('editable') ? json['editable'] as bool : true,
  id: json['id'],
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
  value: ZonesServerSideExcludeValue.fromJson(json['value'] as String),
); }

/// Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
final bool editable;

/// ID of the zone setting.
final dynamic id;

/// last time this setting was modified.
final DateTime? modifiedOn;

final ZonesServerSideExcludeValue value;

Map<String, dynamic> toJson() { return {
  'editable': editable,
  'id': ?id,
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('value'); } 
ZonesServerSideExclude copyWith({bool Function()? editable, dynamic Function()? id, DateTime? Function()? modifiedOn, ZonesServerSideExcludeValue? value, }) { return ZonesServerSideExclude(
  editable: editable != null ? editable() : this.editable,
  id: id != null ? id() : this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesServerSideExclude &&
          editable == other.editable &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          value == other.value; } 
@override int get hashCode { return Object.hash(editable, id, modifiedOn, value); } 
@override String toString() { return 'ZonesServerSideExclude(editable: $editable, id: $id, modifiedOn: $modifiedOn, value: $value)'; } 
 }
