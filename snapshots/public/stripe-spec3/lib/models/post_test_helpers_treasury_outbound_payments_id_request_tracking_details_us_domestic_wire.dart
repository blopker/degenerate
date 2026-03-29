// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire {const PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire({this.chips, this.imad, this.omad, });

factory PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire(
  chips: json['chips'] as String?,
  imad: json['imad'] as String?,
  omad: json['omad'] as String?,
); }

final String? chips;

final String? imad;

final String? omad;

Map<String, dynamic> toJson() { return {
  'chips': ?chips,
  'imad': ?imad,
  'omad': ?omad,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'chips', 'imad', 'omad'}.contains(key)); } 
PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire copyWith({String Function()? chips, String Function()? imad, String Function()? omad, }) { return PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire(
  chips: chips != null ? chips() : this.chips,
  imad: imad != null ? imad() : this.imad,
  omad: omad != null ? omad() : this.omad,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire &&
          chips == other.chips &&
          imad == other.imad &&
          omad == other.omad; } 
@override int get hashCode { return Object.hash(chips, imad, omad); } 
@override String toString() { return 'PostTestHelpersTreasuryOutboundPaymentsIdRequestTrackingDetailsUsDomesticWire(chips: $chips, imad: $imad, omad: $omad)'; } 
 }
