// GENERATED CODE - DO NOT MODIFY BY HAND

/// Status of the token.
final class IamTokenStatus {const IamTokenStatus._(this.value);

factory IamTokenStatus.fromJson(String json) { return switch (json) {
  'active' => active,
  'disabled' => disabled,
  'expired' => expired,
  _ => IamTokenStatus._(json),
}; }

static const IamTokenStatus active = IamTokenStatus._('active');

static const IamTokenStatus disabled = IamTokenStatus._('disabled');

static const IamTokenStatus expired = IamTokenStatus._('expired');

static const List<IamTokenStatus> values = [active, disabled, expired];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IamTokenStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IamTokenStatus($value)'; } 
 }
