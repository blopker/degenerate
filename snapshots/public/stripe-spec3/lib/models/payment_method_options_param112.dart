// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam112Network {const PaymentMethodOptionsParam112Network._(this.value);

factory PaymentMethodOptionsParam112Network.fromJson(String json) { return switch (json) {
  'ach' => ach,
  'us_domestic_wire' => usDomesticWire,
  _ => PaymentMethodOptionsParam112Network._(json),
}; }

static const PaymentMethodOptionsParam112Network ach = PaymentMethodOptionsParam112Network._('ach');

static const PaymentMethodOptionsParam112Network usDomesticWire = PaymentMethodOptionsParam112Network._('us_domestic_wire');

static const List<PaymentMethodOptionsParam112Network> values = [ach, usDomesticWire];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam112Network && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam112Network($value)'; } 
 }
final class PaymentMethodOptionsParam112 {const PaymentMethodOptionsParam112({this.network});

factory PaymentMethodOptionsParam112.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam112(
  network: json['network'] != null ? PaymentMethodOptionsParam112Network.fromJson(json['network'] as String) : null,
); }

final PaymentMethodOptionsParam112Network? network;

Map<String, dynamic> toJson() { return {
  if (network != null) 'network': network?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'network'}.contains(key)); } 
PaymentMethodOptionsParam112 copyWith({PaymentMethodOptionsParam112Network Function()? network}) { return PaymentMethodOptionsParam112(
  network: network != null ? network() : this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam112 &&
          network == other.network; } 
@override int get hashCode { return network.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam112(network: $network)'; } 
 }
