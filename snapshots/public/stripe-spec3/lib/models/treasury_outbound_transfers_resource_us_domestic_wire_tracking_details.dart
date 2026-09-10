// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails {const TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails({this.chips = const Omittable.absent(), this.imad = const Omittable.absent(), this.omad = const Omittable.absent(), });

factory TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails.fromJson(Map<String, dynamic> json) { return TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails(
  chips: json.containsKey('chips') ? Omittable(json['chips'] as String?) : const Omittable.absent(),
  imad: json.containsKey('imad') ? Omittable(json['imad'] as String?) : const Omittable.absent(),
  omad: json.containsKey('omad') ? Omittable(json['omad'] as String?) : const Omittable.absent(),
); }

/// CHIPS System Sequence Number (SSN) of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
final Omittable<String?> chips;

/// IMAD of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
final Omittable<String?> imad;

/// OMAD of the OutboundTransfer for transfers sent over the `us_domestic_wire` network.
final Omittable<String?> omad;

Map<String, dynamic> toJson() { return {
  if (chips.isPresent) 'chips': chips.value,
  if (imad.isPresent) 'imad': imad.value,
  if (omad.isPresent) 'omad': omad.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'chips', 'imad', 'omad'}.contains(key)); } 
TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails copyWith({Omittable<String?>? chips, Omittable<String?>? imad, Omittable<String?>? omad, }) { return TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails(
  chips: chips ?? this.chips,
  imad: imad ?? this.imad,
  omad: omad ?? this.omad,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails &&
          chips == other.chips &&
          imad == other.imad &&
          omad == other.omad; } 
@override int get hashCode { return Object.hash(chips, imad, omad); } 
@override String toString() { return 'TreasuryOutboundTransfersResourceUsDomesticWireTrackingDetails(chips: $chips, imad: $imad, omad: $omad)'; } 
 }
