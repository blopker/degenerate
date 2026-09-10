// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class Networks {const Networks({required this.available, this.preferred = const Omittable.absent(), });

factory Networks.fromJson(Map<String, dynamic> json) { return Networks(
  available: (json['available'] as List<dynamic>).map((e) => e as String).toList(),
  preferred: json.containsKey('preferred') ? Omittable(json['preferred'] as String?) : const Omittable.absent(),
); }

/// All networks available for selection via [payment_method_options.card.network](/api/payment_intents/confirm#confirm_payment_intent-payment_method_options-card-network).
final List<String> available;

/// The preferred network for co-branded cards. Can be `cartes_bancaires`, `mastercard`, `visa` or `invalid_preference` if requested network is not valid for the card.
final Omittable<String?> preferred;

Map<String, dynamic> toJson() { return {
  'available': available,
  if (preferred.isPresent) 'preferred': preferred.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('available'); } 
Networks copyWith({List<String>? available, Omittable<String?>? preferred, }) { return Networks(
  available: available ?? this.available,
  preferred: preferred ?? this.preferred,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Networks &&
          listEquals(available, other.available) &&
          preferred == other.preferred; } 
@override int get hashCode { return Object.hash(Object.hashAll(available), preferred); } 
@override String toString() { return 'Networks(available: $available, preferred: $preferred)'; } 
 }
