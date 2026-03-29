// GENERATED CODE - DO NOT MODIFY BY HAND

/// Order results by creation time, ascending or descending.
final class KeysListOrder {const KeysListOrder._(this.value);

factory KeysListOrder.fromJson(String json) { return switch (json) {
  'asc' => asc,
  'desc' => desc,
  _ => KeysListOrder._(json),
}; }

static const KeysListOrder asc = KeysListOrder._('asc');

static const KeysListOrder desc = KeysListOrder._('desc');

static const List<KeysListOrder> values = [asc, desc];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is KeysListOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'KeysListOrder($value)'; } 
 }
