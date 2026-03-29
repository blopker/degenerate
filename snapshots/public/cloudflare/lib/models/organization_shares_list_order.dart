// GENERATED CODE - DO NOT MODIFY BY HAND

final class OrganizationSharesListOrder {const OrganizationSharesListOrder._(this.value);

factory OrganizationSharesListOrder.fromJson(String json) { return switch (json) {
  'name' => $name,
  'created' => created,
  _ => OrganizationSharesListOrder._(json),
}; }

static const OrganizationSharesListOrder $name = OrganizationSharesListOrder._('name');

static const OrganizationSharesListOrder created = OrganizationSharesListOrder._('created');

static const List<OrganizationSharesListOrder> values = [$name, created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is OrganizationSharesListOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'OrganizationSharesListOrder($value)'; } 
 }
