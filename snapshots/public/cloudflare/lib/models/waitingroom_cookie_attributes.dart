// GENERATED CODE - DO NOT MODIFY BY HAND

/// Configures the SameSite attribute on the waiting room cookie. Value `auto` will be translated to `lax` or `none` depending if **Always Use HTTPS** is enabled. Note that when using value `none`, the secure attribute cannot be set to `never`.
final class WaitingroomCookieAttributesSamesite {const WaitingroomCookieAttributesSamesite._(this.value);

factory WaitingroomCookieAttributesSamesite.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'lax' => lax,
  'none' => none,
  'strict' => strict,
  _ => WaitingroomCookieAttributesSamesite._(json),
}; }

static const WaitingroomCookieAttributesSamesite auto = WaitingroomCookieAttributesSamesite._('auto');

static const WaitingroomCookieAttributesSamesite lax = WaitingroomCookieAttributesSamesite._('lax');

static const WaitingroomCookieAttributesSamesite none = WaitingroomCookieAttributesSamesite._('none');

static const WaitingroomCookieAttributesSamesite strict = WaitingroomCookieAttributesSamesite._('strict');

static const List<WaitingroomCookieAttributesSamesite> values = [auto, lax, none, strict];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WaitingroomCookieAttributesSamesite && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WaitingroomCookieAttributesSamesite($value)'; } 
 }
/// Configures the Secure attribute on the waiting room cookie. Value `always` indicates that the Secure attribute will be set in the Set-Cookie header, `never` indicates that the Secure attribute will not be set, and `auto` will set the Secure attribute depending if **Always Use HTTPS** is enabled.
final class WaitingroomCookieAttributesSecure {const WaitingroomCookieAttributesSecure._(this.value);

factory WaitingroomCookieAttributesSecure.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'always' => always,
  'never' => never,
  _ => WaitingroomCookieAttributesSecure._(json),
}; }

static const WaitingroomCookieAttributesSecure auto = WaitingroomCookieAttributesSecure._('auto');

static const WaitingroomCookieAttributesSecure always = WaitingroomCookieAttributesSecure._('always');

static const WaitingroomCookieAttributesSecure never = WaitingroomCookieAttributesSecure._('never');

static const List<WaitingroomCookieAttributesSecure> values = [auto, always, never];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WaitingroomCookieAttributesSecure && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WaitingroomCookieAttributesSecure($value)'; } 
 }
/// Configures cookie attributes for the waiting room cookie. This encrypted cookie stores a user's status in the waiting room, such as queue position.
final class WaitingroomCookieAttributes {const WaitingroomCookieAttributes({this.samesite = WaitingroomCookieAttributesSamesite.auto, this.secure = WaitingroomCookieAttributesSecure.auto, });

factory WaitingroomCookieAttributes.fromJson(Map<String, dynamic> json) { return WaitingroomCookieAttributes(
  samesite: json.containsKey('samesite') ? WaitingroomCookieAttributesSamesite.fromJson(json['samesite'] as String) : WaitingroomCookieAttributesSamesite.auto,
  secure: json.containsKey('secure') ? WaitingroomCookieAttributesSecure.fromJson(json['secure'] as String) : WaitingroomCookieAttributesSecure.auto,
); }

/// Configures the SameSite attribute on the waiting room cookie. Value `auto` will be translated to `lax` or `none` depending if **Always Use HTTPS** is enabled. Note that when using value `none`, the secure attribute cannot be set to `never`.
final WaitingroomCookieAttributesSamesite samesite;

/// Configures the Secure attribute on the waiting room cookie. Value `always` indicates that the Secure attribute will be set in the Set-Cookie header, `never` indicates that the Secure attribute will not be set, and `auto` will set the Secure attribute depending if **Always Use HTTPS** is enabled.
final WaitingroomCookieAttributesSecure secure;

Map<String, dynamic> toJson() { return {
  'samesite': samesite.toJson(),
  'secure': secure.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'samesite', 'secure'}.contains(key)); } 
WaitingroomCookieAttributes copyWith({WaitingroomCookieAttributesSamesite Function()? samesite, WaitingroomCookieAttributesSecure Function()? secure, }) { return WaitingroomCookieAttributes(
  samesite: samesite != null ? samesite() : this.samesite,
  secure: secure != null ? secure() : this.secure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WaitingroomCookieAttributes &&
          samesite == other.samesite &&
          secure == other.secure; } 
@override int get hashCode { return Object.hash(samesite, secure); } 
@override String toString() { return 'WaitingroomCookieAttributes(samesite: $samesite, secure: $secure)'; } 
 }
