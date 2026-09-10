// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'account_decline_charge_on.dart';/// 
@immutable final class AccountCardPaymentsSettings {const AccountCardPaymentsSettings({this.declineOn, this.statementDescriptorPrefix = const Omittable.absent(), this.statementDescriptorPrefixKana = const Omittable.absent(), this.statementDescriptorPrefixKanji = const Omittable.absent(), });

factory AccountCardPaymentsSettings.fromJson(Map<String, dynamic> json) { return AccountCardPaymentsSettings(
  declineOn: json['decline_on'] != null ? AccountDeclineChargeOn.fromJson(json['decline_on'] as Map<String, dynamic>) : null,
  statementDescriptorPrefix: json.containsKey('statement_descriptor_prefix') ? Omittable(json['statement_descriptor_prefix'] as String?) : const Omittable.absent(),
  statementDescriptorPrefixKana: json.containsKey('statement_descriptor_prefix_kana') ? Omittable(json['statement_descriptor_prefix_kana'] as String?) : const Omittable.absent(),
  statementDescriptorPrefixKanji: json.containsKey('statement_descriptor_prefix_kanji') ? Omittable(json['statement_descriptor_prefix_kanji'] as String?) : const Omittable.absent(),
); }

final AccountDeclineChargeOn? declineOn;

/// The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
final Omittable<String?> statementDescriptorPrefix;

/// The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
final Omittable<String?> statementDescriptorPrefixKana;

/// The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
final Omittable<String?> statementDescriptorPrefixKanji;

Map<String, dynamic> toJson() { return {
  if (declineOn != null) 'decline_on': declineOn?.toJson(),
  if (statementDescriptorPrefix.isPresent) 'statement_descriptor_prefix': statementDescriptorPrefix.value,
  if (statementDescriptorPrefixKana.isPresent) 'statement_descriptor_prefix_kana': statementDescriptorPrefixKana.value,
  if (statementDescriptorPrefixKanji.isPresent) 'statement_descriptor_prefix_kanji': statementDescriptorPrefixKanji.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'decline_on', 'statement_descriptor_prefix', 'statement_descriptor_prefix_kana', 'statement_descriptor_prefix_kanji'}.contains(key)); } 
AccountCardPaymentsSettings copyWith({AccountDeclineChargeOn? Function()? declineOn, Omittable<String?>? statementDescriptorPrefix, Omittable<String?>? statementDescriptorPrefixKana, Omittable<String?>? statementDescriptorPrefixKanji, }) { return AccountCardPaymentsSettings(
  declineOn: declineOn != null ? declineOn() : this.declineOn,
  statementDescriptorPrefix: statementDescriptorPrefix ?? this.statementDescriptorPrefix,
  statementDescriptorPrefixKana: statementDescriptorPrefixKana ?? this.statementDescriptorPrefixKana,
  statementDescriptorPrefixKanji: statementDescriptorPrefixKanji ?? this.statementDescriptorPrefixKanji,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountCardPaymentsSettings &&
          declineOn == other.declineOn &&
          statementDescriptorPrefix == other.statementDescriptorPrefix &&
          statementDescriptorPrefixKana == other.statementDescriptorPrefixKana &&
          statementDescriptorPrefixKanji == other.statementDescriptorPrefixKanji; } 
@override int get hashCode { return Object.hash(declineOn, statementDescriptorPrefix, statementDescriptorPrefixKana, statementDescriptorPrefixKanji); } 
@override String toString() { return 'AccountCardPaymentsSettings(declineOn: $declineOn, statementDescriptorPrefix: $statementDescriptorPrefix, statementDescriptorPrefixKana: $statementDescriptorPrefixKana, statementDescriptorPrefixKanji: $statementDescriptorPrefixKanji)'; } 
 }
