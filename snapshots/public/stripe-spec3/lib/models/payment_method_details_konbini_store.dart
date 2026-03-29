// GENERATED CODE - DO NOT MODIFY BY HAND

/// The name of the convenience store chain where the payment was completed.
final class PaymentMethodDetailsKonbiniStoreChain {const PaymentMethodDetailsKonbiniStoreChain._(this.value);

factory PaymentMethodDetailsKonbiniStoreChain.fromJson(String json) { return switch (json) {
  'familymart' => familymart,
  'lawson' => lawson,
  'ministop' => ministop,
  'seicomart' => seicomart,
  _ => PaymentMethodDetailsKonbiniStoreChain._(json),
}; }

static const PaymentMethodDetailsKonbiniStoreChain familymart = PaymentMethodDetailsKonbiniStoreChain._('familymart');

static const PaymentMethodDetailsKonbiniStoreChain lawson = PaymentMethodDetailsKonbiniStoreChain._('lawson');

static const PaymentMethodDetailsKonbiniStoreChain ministop = PaymentMethodDetailsKonbiniStoreChain._('ministop');

static const PaymentMethodDetailsKonbiniStoreChain seicomart = PaymentMethodDetailsKonbiniStoreChain._('seicomart');

static const List<PaymentMethodDetailsKonbiniStoreChain> values = [familymart, lawson, ministop, seicomart];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsKonbiniStoreChain && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsKonbiniStoreChain($value)'; } 
 }
/// 
final class PaymentMethodDetailsKonbiniStore {const PaymentMethodDetailsKonbiniStore({this.chain});

factory PaymentMethodDetailsKonbiniStore.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsKonbiniStore(
  chain: json['chain'] != null ? PaymentMethodDetailsKonbiniStoreChain.fromJson(json['chain'] as String) : null,
); }

/// The name of the convenience store chain where the payment was completed.
final PaymentMethodDetailsKonbiniStoreChain? chain;

Map<String, dynamic> toJson() { return {
  if (chain != null) 'chain': chain?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsKonbiniStore copyWith({PaymentMethodDetailsKonbiniStoreChain? Function()? chain}) { return PaymentMethodDetailsKonbiniStore(
  chain: chain != null ? chain() : this.chain,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsKonbiniStore &&
          chain == other.chain; } 
@override int get hashCode { return chain.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsKonbiniStore(chain: $chain)'; } 
 }
