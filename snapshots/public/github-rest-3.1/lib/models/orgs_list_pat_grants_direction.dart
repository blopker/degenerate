// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrgsListPatGrantsDirection {const OrgsListPatGrantsDirection._(this.value);

factory OrgsListPatGrantsDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => OrgsListPatGrantsDirection._(json),
}; }

static const OrgsListPatGrantsDirection asc = OrgsListPatGrantsDirection._('asc');

static const OrgsListPatGrantsDirection desc = OrgsListPatGrantsDirection._('desc');

static const List<OrgsListPatGrantsDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrgsListPatGrantsDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrgsListPatGrantsDirection($value)'; } 
 }
