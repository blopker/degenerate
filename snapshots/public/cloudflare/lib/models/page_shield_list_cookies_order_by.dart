// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The field used to sort returned cookies.
@immutable final class PageShieldListCookiesOrderBy {const PageShieldListCookiesOrderBy._(this.value);

factory PageShieldListCookiesOrderBy.fromJson(String json) { return switch (json) {
  'first_seen_at' => firstSeenAt,
  'last_seen_at' => lastSeenAt,
  _ => PageShieldListCookiesOrderBy._(json),
}; }

static const PageShieldListCookiesOrderBy firstSeenAt = PageShieldListCookiesOrderBy._('first_seen_at');

static const PageShieldListCookiesOrderBy lastSeenAt = PageShieldListCookiesOrderBy._('last_seen_at');

static const List<PageShieldListCookiesOrderBy> values = [firstSeenAt, lastSeenAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PageShieldListCookiesOrderBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PageShieldListCookiesOrderBy($value)'; } 
 }
