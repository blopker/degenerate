// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuingPersonalizationDesignRejectionReasonsCardLogo {const IssuingPersonalizationDesignRejectionReasonsCardLogo._(this.value);

factory IssuingPersonalizationDesignRejectionReasonsCardLogo.fromJson(String json) { return switch (json) {
  'geographic_location' => geographicLocation,
  'inappropriate' => inappropriate,
  'network_name' => networkName,
  'non_binary_image' => nonBinaryImage,
  'non_fiat_currency' => nonFiatCurrency,
  'other' => $other,
  'other_entity' => otherEntity,
  'promotional_material' => promotionalMaterial,
  _ => IssuingPersonalizationDesignRejectionReasonsCardLogo._(json),
}; }

static const IssuingPersonalizationDesignRejectionReasonsCardLogo geographicLocation = IssuingPersonalizationDesignRejectionReasonsCardLogo._('geographic_location');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo inappropriate = IssuingPersonalizationDesignRejectionReasonsCardLogo._('inappropriate');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo networkName = IssuingPersonalizationDesignRejectionReasonsCardLogo._('network_name');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo nonBinaryImage = IssuingPersonalizationDesignRejectionReasonsCardLogo._('non_binary_image');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo nonFiatCurrency = IssuingPersonalizationDesignRejectionReasonsCardLogo._('non_fiat_currency');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo $other = IssuingPersonalizationDesignRejectionReasonsCardLogo._('other');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo otherEntity = IssuingPersonalizationDesignRejectionReasonsCardLogo._('other_entity');

static const IssuingPersonalizationDesignRejectionReasonsCardLogo promotionalMaterial = IssuingPersonalizationDesignRejectionReasonsCardLogo._('promotional_material');

static const List<IssuingPersonalizationDesignRejectionReasonsCardLogo> values = [geographicLocation, inappropriate, networkName, nonBinaryImage, nonFiatCurrency, $other, otherEntity, promotionalMaterial];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingPersonalizationDesignRejectionReasonsCardLogo && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingPersonalizationDesignRejectionReasonsCardLogo($value)'; } 
 }
@immutable final class IssuingPersonalizationDesignRejectionReasonsCarrierText {const IssuingPersonalizationDesignRejectionReasonsCarrierText._(this.value);

factory IssuingPersonalizationDesignRejectionReasonsCarrierText.fromJson(String json) { return switch (json) {
  'geographic_location' => geographicLocation,
  'inappropriate' => inappropriate,
  'network_name' => networkName,
  'non_fiat_currency' => nonFiatCurrency,
  'other' => $other,
  'other_entity' => otherEntity,
  'promotional_material' => promotionalMaterial,
  _ => IssuingPersonalizationDesignRejectionReasonsCarrierText._(json),
}; }

static const IssuingPersonalizationDesignRejectionReasonsCarrierText geographicLocation = IssuingPersonalizationDesignRejectionReasonsCarrierText._('geographic_location');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText inappropriate = IssuingPersonalizationDesignRejectionReasonsCarrierText._('inappropriate');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText networkName = IssuingPersonalizationDesignRejectionReasonsCarrierText._('network_name');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText nonFiatCurrency = IssuingPersonalizationDesignRejectionReasonsCarrierText._('non_fiat_currency');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText $other = IssuingPersonalizationDesignRejectionReasonsCarrierText._('other');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText otherEntity = IssuingPersonalizationDesignRejectionReasonsCarrierText._('other_entity');

static const IssuingPersonalizationDesignRejectionReasonsCarrierText promotionalMaterial = IssuingPersonalizationDesignRejectionReasonsCarrierText._('promotional_material');

static const List<IssuingPersonalizationDesignRejectionReasonsCarrierText> values = [geographicLocation, inappropriate, networkName, nonFiatCurrency, $other, otherEntity, promotionalMaterial];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingPersonalizationDesignRejectionReasonsCarrierText && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingPersonalizationDesignRejectionReasonsCarrierText($value)'; } 
 }
/// 
@immutable final class IssuingPersonalizationDesignRejectionReasons {const IssuingPersonalizationDesignRejectionReasons({this.cardLogo = const Omittable.absent(), this.carrierText = const Omittable.absent(), });

factory IssuingPersonalizationDesignRejectionReasons.fromJson(Map<String, dynamic> json) { return IssuingPersonalizationDesignRejectionReasons(
  cardLogo: json.containsKey('card_logo') ? Omittable((json['card_logo'] as List<dynamic>?)?.map((e) => IssuingPersonalizationDesignRejectionReasonsCardLogo.fromJson(e as String)).toList()) : const Omittable.absent(),
  carrierText: json.containsKey('carrier_text') ? Omittable((json['carrier_text'] as List<dynamic>?)?.map((e) => IssuingPersonalizationDesignRejectionReasonsCarrierText.fromJson(e as String)).toList()) : const Omittable.absent(),
); }

/// The reason(s) the card logo was rejected.
final Omittable<List<IssuingPersonalizationDesignRejectionReasonsCardLogo>?> cardLogo;

/// The reason(s) the carrier text was rejected.
final Omittable<List<IssuingPersonalizationDesignRejectionReasonsCarrierText>?> carrierText;

Map<String, dynamic> toJson() { return {
  if (cardLogo.isPresent) 'card_logo': cardLogo.value?.map((e) => e.toJson()).toList(),
  if (carrierText.isPresent) 'carrier_text': carrierText.value?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card_logo', 'carrier_text'}.contains(key)); } 
IssuingPersonalizationDesignRejectionReasons copyWith({Omittable<List<IssuingPersonalizationDesignRejectionReasonsCardLogo>?>? cardLogo, Omittable<List<IssuingPersonalizationDesignRejectionReasonsCarrierText>?>? carrierText, }) { return IssuingPersonalizationDesignRejectionReasons(
  cardLogo: cardLogo ?? this.cardLogo,
  carrierText: carrierText ?? this.carrierText,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingPersonalizationDesignRejectionReasons &&
          cardLogo.isPresent == other.cardLogo.isPresent &&
          listEquals(cardLogo.value, other.cardLogo.value) &&
          carrierText.isPresent == other.carrierText.isPresent &&
          listEquals(carrierText.value, other.carrierText.value); } 
@override int get hashCode { return Object.hash(Object.hashAll(cardLogo.value ?? const []), Object.hashAll(carrierText.value ?? const [])); } 
@override String toString() { return 'IssuingPersonalizationDesignRejectionReasons(cardLogo: $cardLogo, carrierText: $carrierText)'; } 
 }
