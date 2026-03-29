// GENERATED CODE - DO NOT MODIFY BY HAND

final class ListDevicesSortBy {const ListDevicesSortBy._(this.value);

factory ListDevicesSortBy.fromJson(String json) { return switch (json) {
  'name' => $name,
  'id' => id,
  'client_version' => clientVersion,
  'last_seen_user.email' => lastSeenUserEmail,
  'last_seen_at' => lastSeenAt,
  'active_registrations' => activeRegistrations,
  'created_at' => createdAt,
  _ => ListDevicesSortBy._(json),
}; }

static const ListDevicesSortBy $name = ListDevicesSortBy._('name');

static const ListDevicesSortBy id = ListDevicesSortBy._('id');

static const ListDevicesSortBy clientVersion = ListDevicesSortBy._('client_version');

static const ListDevicesSortBy lastSeenUserEmail = ListDevicesSortBy._('last_seen_user.email');

static const ListDevicesSortBy lastSeenAt = ListDevicesSortBy._('last_seen_at');

static const ListDevicesSortBy activeRegistrations = ListDevicesSortBy._('active_registrations');

static const ListDevicesSortBy createdAt = ListDevicesSortBy._('created_at');

static const List<ListDevicesSortBy> values = [$name, id, clientVersion, lastSeenUserEmail, lastSeenAt, activeRegistrations, createdAt];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ListDevicesSortBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ListDevicesSortBy($value)'; } 
 }
