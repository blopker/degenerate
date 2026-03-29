// GENERATED CODE - DO NOT MODIFY BY HAND

/// Bandwidth structure as visible through the customer-facing API.
final class Bandwidth {const Bandwidth._(this.value);

factory Bandwidth.fromJson(String json) { return switch (json) {
  '50M' => $50M,
  '100M' => $100M,
  '200M' => $200M,
  '300M' => $300M,
  '400M' => $400M,
  '500M' => $500M,
  '1G' => $1G,
  '2G' => $2G,
  '5G' => $5G,
  '10G' => $10G,
  '20G' => $20G,
  '50G' => $50G,
  _ => Bandwidth._(json),
}; }

static const Bandwidth $50M = Bandwidth._('50M');

static const Bandwidth $100M = Bandwidth._('100M');

static const Bandwidth $200M = Bandwidth._('200M');

static const Bandwidth $300M = Bandwidth._('300M');

static const Bandwidth $400M = Bandwidth._('400M');

static const Bandwidth $500M = Bandwidth._('500M');

static const Bandwidth $1G = Bandwidth._('1G');

static const Bandwidth $2G = Bandwidth._('2G');

static const Bandwidth $5G = Bandwidth._('5G');

static const Bandwidth $10G = Bandwidth._('10G');

static const Bandwidth $20G = Bandwidth._('20G');

static const Bandwidth $50G = Bandwidth._('50G');

static const List<Bandwidth> values = [$50M, $100M, $200M, $300M, $400M, $500M, $1G, $2G, $5G, $10G, $20G, $50G];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Bandwidth && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Bandwidth($value)'; } 
 }
