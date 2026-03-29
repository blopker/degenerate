// GENERATED CODE - DO NOT MODIFY BY HAND

/// Determines whether or not the account is eligible for the delivery mechanism.
extension type const AaaEligible(bool value) {
factory AaaEligible.fromJson(bool json) => AaaEligible(json);

bool toJson() => value;

}
/// Beta flag. Users can create a policy with a mechanism that is not ready, but we cannot guarantee successful delivery of notifications.
extension type const AaaReady(bool value) {
factory AaaReady.fromJson(bool json) => AaaReady(json);

bool toJson() => value;

}
/// Determines type of delivery mechanism.
final class AaaSchemasType {const AaaSchemasType._(this.value);

factory AaaSchemasType.fromJson(String json) { return switch (json) {
  'email' => email,
  'pagerduty' => pagerduty,
  'webhook' => webhook,
  _ => AaaSchemasType._(json),
}; }

static const AaaSchemasType email = AaaSchemasType._('email');

static const AaaSchemasType pagerduty = AaaSchemasType._('pagerduty');

static const AaaSchemasType webhook = AaaSchemasType._('webhook');

static const List<AaaSchemasType> values = [email, pagerduty, webhook];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AaaSchemasType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AaaSchemasType($value)'; } 
 }
final class AaaEligibility {const AaaEligibility({this.eligible, this.ready, this.type, });

factory AaaEligibility.fromJson(Map<String, dynamic> json) { return AaaEligibility(
  eligible: json['eligible'] != null ? AaaEligible.fromJson(json['eligible'] as bool) : null,
  ready: json['ready'] != null ? AaaReady.fromJson(json['ready'] as bool) : null,
  type: json['type'] != null ? AaaSchemasType.fromJson(json['type'] as String) : null,
); }

final AaaEligible? eligible;

final AaaReady? ready;

final AaaSchemasType? type;

Map<String, dynamic> toJson() { return {
  if (eligible != null) 'eligible': eligible?.toJson(),
  if (ready != null) 'ready': ready?.toJson(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AaaEligibility copyWith({AaaEligible Function()? eligible, AaaReady Function()? ready, AaaSchemasType Function()? type, }) { return AaaEligibility(
  eligible: eligible != null ? eligible() : this.eligible,
  ready: ready != null ? ready() : this.ready,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AaaEligibility &&
          eligible == other.eligible &&
          ready == other.ready &&
          type == other.type; } 
@override int get hashCode { return Object.hash(eligible, ready, type); } 
@override String toString() { return 'AaaEligibility(eligible: $eligible, ready: $ready, type: $type)'; } 
 }
