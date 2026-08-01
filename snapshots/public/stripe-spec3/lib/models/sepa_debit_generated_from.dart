// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'charge.dart';import 'sepa_debit_generated_from_charge.dart';import 'sepa_debit_generated_from_setup_attempt.dart';import 'setup_attempt.dart';/// 
@immutable final class SepaDebitGeneratedFrom {const SepaDebitGeneratedFrom({this.charge = const Omittable.absent(), this.setupAttempt = const Omittable.absent(), });

factory SepaDebitGeneratedFrom.fromJson(Map<String, dynamic> json) { return SepaDebitGeneratedFrom(
  charge: json.containsKey('charge') ? Omittable(json['charge'] != null ? OneOf2.parse(json['charge'], fromA: (v) => v as String, fromB: (v) => Charge.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  setupAttempt: json.containsKey('setup_attempt') ? Omittable(json['setup_attempt'] != null ? OneOf2.parse(json['setup_attempt'], fromA: (v) => v as String, fromB: (v) => SetupAttempt.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The ID of the Charge that generated this PaymentMethod, if any.
final Omittable<SepaDebitGeneratedFromCharge?> charge;

/// The ID of the SetupAttempt that generated this PaymentMethod, if any.
final Omittable<SepaDebitGeneratedFromSetupAttempt?> setupAttempt;

Map<String, dynamic> toJson() { return {
  if (charge.isPresent) 'charge': charge.value?.toJson(),
  if (setupAttempt.isPresent) 'setup_attempt': setupAttempt.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'charge', 'setup_attempt'}.contains(key)); } 
SepaDebitGeneratedFrom copyWith({Omittable<SepaDebitGeneratedFromCharge?>? charge, Omittable<SepaDebitGeneratedFromSetupAttempt?>? setupAttempt, }) { return SepaDebitGeneratedFrom(
  charge: charge ?? this.charge,
  setupAttempt: setupAttempt ?? this.setupAttempt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SepaDebitGeneratedFrom &&
          charge == other.charge &&
          setupAttempt == other.setupAttempt; } 
@override int get hashCode { return Object.hash(charge, setupAttempt); } 
@override String toString() { return 'SepaDebitGeneratedFrom(charge: $charge, setupAttempt: $setupAttempt)'; } 
 }
