// GENERATED CODE - DO NOT MODIFY BY HAND

final class EmailSecuritySortingDirection {const EmailSecuritySortingDirection._(this.value);

factory EmailSecuritySortingDirection.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => EmailSecuritySortingDirection._(json),
}; }

static const EmailSecuritySortingDirection asc = EmailSecuritySortingDirection._('asc');

static const EmailSecuritySortingDirection desc = EmailSecuritySortingDirection._('desc');

static const List<EmailSecuritySortingDirection> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecuritySortingDirection && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecuritySortingDirection($value)'; } 
 }
