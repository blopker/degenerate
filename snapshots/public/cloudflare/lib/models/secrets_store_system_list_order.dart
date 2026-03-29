// GENERATED CODE - DO NOT MODIFY BY HAND

final class SecretsStoreSystemListOrder {const SecretsStoreSystemListOrder._(this.value);

factory SecretsStoreSystemListOrder.fromJson(String json) { return switch (json) {
  'name' => $name,
  'comment' => comment,
  'created' => created,
  'modified' => modified,
  'status' => status,
  _ => SecretsStoreSystemListOrder._(json),
}; }

static const SecretsStoreSystemListOrder $name = SecretsStoreSystemListOrder._('name');

static const SecretsStoreSystemListOrder comment = SecretsStoreSystemListOrder._('comment');

static const SecretsStoreSystemListOrder created = SecretsStoreSystemListOrder._('created');

static const SecretsStoreSystemListOrder modified = SecretsStoreSystemListOrder._('modified');

static const SecretsStoreSystemListOrder status = SecretsStoreSystemListOrder._('status');

static const List<SecretsStoreSystemListOrder> values = [$name, comment, created, modified, status];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretsStoreSystemListOrder && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretsStoreSystemListOrder($value)'; } 
 }
