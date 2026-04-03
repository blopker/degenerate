// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'voice_consent_resource.dart';@immutable final class VoiceConsentListResourceObject {const VoiceConsentListResourceObject._(this.value);

factory VoiceConsentListResourceObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => VoiceConsentListResourceObject._(json),
}; }

static const VoiceConsentListResourceObject list = VoiceConsentListResourceObject._('list');

static const List<VoiceConsentListResourceObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is VoiceConsentListResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'VoiceConsentListResourceObject($value)'; } 
 }
@immutable final class VoiceConsentListResource {const VoiceConsentListResource({required this.object, required this.data, required this.hasMore, this.firstId, this.lastId, });

factory VoiceConsentListResource.fromJson(Map<String, dynamic> json) { return VoiceConsentListResource(
  object: VoiceConsentListResourceObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => VoiceConsentResource.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String?,
  lastId: json['last_id'] as String?,
  hasMore: json['has_more'] as bool,
); }

final VoiceConsentListResourceObject object;

final List<VoiceConsentResource> data;

final String? firstId;

final String? lastId;

final bool hasMore;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'data': data.map((e) => e.toJson()).toList(),
  'first_id': ?firstId,
  'last_id': ?lastId,
  'has_more': hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('data') &&
      json.containsKey('has_more') && json['has_more'] is bool; } 
VoiceConsentListResource copyWith({VoiceConsentListResourceObject? object, List<VoiceConsentResource>? data, String? Function()? firstId, String? Function()? lastId, bool? hasMore, }) { return VoiceConsentListResource(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId != null ? firstId() : this.firstId,
  lastId: lastId != null ? lastId() : this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VoiceConsentListResource &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'VoiceConsentListResource(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
