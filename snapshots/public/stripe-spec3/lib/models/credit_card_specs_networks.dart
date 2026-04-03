// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class CreditCardSpecsNetworksPreferred {const CreditCardSpecsNetworksPreferred._(this.value);

factory CreditCardSpecsNetworksPreferred.fromJson(String json) { return switch (json) {
  'cartes_bancaires' => cartesBancaires,
  'mastercard' => mastercard,
  'visa' => visa,
  _ => CreditCardSpecsNetworksPreferred._(json),
}; }

static const CreditCardSpecsNetworksPreferred cartesBancaires = CreditCardSpecsNetworksPreferred._('cartes_bancaires');

static const CreditCardSpecsNetworksPreferred mastercard = CreditCardSpecsNetworksPreferred._('mastercard');

static const CreditCardSpecsNetworksPreferred visa = CreditCardSpecsNetworksPreferred._('visa');

static const List<CreditCardSpecsNetworksPreferred> values = [cartesBancaires, mastercard, visa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreditCardSpecsNetworksPreferred && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreditCardSpecsNetworksPreferred($value)'; } 
 }
@immutable final class CreditCardSpecsNetworks {const CreditCardSpecsNetworks({this.preferred});

factory CreditCardSpecsNetworks.fromJson(Map<String, dynamic> json) { return CreditCardSpecsNetworks(
  preferred: json['preferred'] != null ? CreditCardSpecsNetworksPreferred.fromJson(json['preferred'] as String) : null,
); }

final CreditCardSpecsNetworksPreferred? preferred;

Map<String, dynamic> toJson() { return {
  if (preferred != null) 'preferred': preferred?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'preferred'}.contains(key)); } 
CreditCardSpecsNetworks copyWith({CreditCardSpecsNetworksPreferred Function()? preferred}) { return CreditCardSpecsNetworks(
  preferred: preferred != null ? preferred() : this.preferred,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreditCardSpecsNetworks &&
          preferred == other.preferred; } 
@override int get hashCode { return preferred.hashCode; } 
@override String toString() { return 'CreditCardSpecsNetworks(preferred: $preferred)'; } 
 }
