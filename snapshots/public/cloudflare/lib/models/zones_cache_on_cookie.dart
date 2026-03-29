// GENERATED CODE - DO NOT MODIFY BY HAND

/// Apply the Cache Everything option (Cache Level setting) based on a
/// regular expression match against a cookie name.
/// 
final class ZonesCacheOnCookieId {const ZonesCacheOnCookieId._(this.value);

factory ZonesCacheOnCookieId.fromJson(String json) { return switch (json) {
  'cache_on_cookie' => cacheOnCookie,
  _ => ZonesCacheOnCookieId._(json),
}; }

static const ZonesCacheOnCookieId cacheOnCookie = ZonesCacheOnCookieId._('cache_on_cookie');

static const List<ZonesCacheOnCookieId> values = [cacheOnCookie];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesCacheOnCookieId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesCacheOnCookieId($value)'; } 
 }
final class ZonesCacheOnCookie {const ZonesCacheOnCookie({this.id, this.value, });

factory ZonesCacheOnCookie.fromJson(Map<String, dynamic> json) { return ZonesCacheOnCookie(
  id: json['id'] != null ? ZonesCacheOnCookieId.fromJson(json['id'] as String) : null,
  value: json['value'] as String?,
); }

/// Apply the Cache Everything option (Cache Level setting) based on a
/// regular expression match against a cookie name.
/// 
final ZonesCacheOnCookieId? id;

/// The regular expression to use for matching cookie names in the
/// request.
/// 
final String? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesCacheOnCookie copyWith({ZonesCacheOnCookieId Function()? id, String Function()? value, }) { return ZonesCacheOnCookie(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesCacheOnCookie &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesCacheOnCookie(id: $id, value: $value)'; } 
 }
