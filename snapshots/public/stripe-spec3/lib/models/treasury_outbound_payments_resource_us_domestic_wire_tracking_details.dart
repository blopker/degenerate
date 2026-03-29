// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails {const TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails({this.chips, this.imad, this.omad, });

factory TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails.fromJson(Map<String, dynamic> json) { return TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails(
  chips: json['chips'] as String?,
  imad: json['imad'] as String?,
  omad: json['omad'] as String?,
); }

/// CHIPS System Sequence Number (SSN) of the OutboundPayment for payments sent over the `us_domestic_wire` network.
final String? chips;

/// IMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
final String? imad;

/// OMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
final String? omad;

Map<String, dynamic> toJson() { return {
  'chips': ?chips,
  'imad': ?imad,
  'omad': ?omad,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'chips', 'imad', 'omad'}.contains(key)); } 
TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails copyWith({String? Function()? chips, String? Function()? imad, String? Function()? omad, }) { return TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails(
  chips: chips != null ? chips() : this.chips,
  imad: imad != null ? imad() : this.imad,
  omad: omad != null ? omad() : this.omad,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails &&
          chips == other.chips &&
          imad == other.imad &&
          omad == other.omad; } 
@override int get hashCode { return Object.hash(chips, imad, omad); } 
@override String toString() { return 'TreasuryOutboundPaymentsResourceUsDomesticWireTrackingDetails(chips: $chips, imad: $imad, omad: $omad)'; } 
 }
