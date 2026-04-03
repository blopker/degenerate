// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class AccountPaymentsSettings {const AccountPaymentsSettings({this.statementDescriptor, this.statementDescriptorKana, this.statementDescriptorKanji, });

factory AccountPaymentsSettings.fromJson(Map<String, dynamic> json) { return AccountPaymentsSettings(
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorKana: json['statement_descriptor_kana'] as String?,
  statementDescriptorKanji: json['statement_descriptor_kanji'] as String?,
); }

/// The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
final String? statementDescriptor;

/// The Kana variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
final String? statementDescriptorKana;

/// The Kanji variation of `statement_descriptor` used for charges in Japan. Japanese statement descriptors have [special requirements](https://docs.stripe.com/get-started/account/statement-descriptors#set-japanese-statement-descriptors).
final String? statementDescriptorKanji;

Map<String, dynamic> toJson() { return {
  'statement_descriptor': ?statementDescriptor,
  'statement_descriptor_kana': ?statementDescriptorKana,
  'statement_descriptor_kanji': ?statementDescriptorKanji,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'statement_descriptor', 'statement_descriptor_kana', 'statement_descriptor_kanji'}.contains(key)); } 
AccountPaymentsSettings copyWith({String? Function()? statementDescriptor, String? Function()? statementDescriptorKana, String? Function()? statementDescriptorKanji, }) { return AccountPaymentsSettings(
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  statementDescriptorKana: statementDescriptorKana != null ? statementDescriptorKana() : this.statementDescriptorKana,
  statementDescriptorKanji: statementDescriptorKanji != null ? statementDescriptorKanji() : this.statementDescriptorKanji,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountPaymentsSettings &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorKana == other.statementDescriptorKana &&
          statementDescriptorKanji == other.statementDescriptorKanji; } 
@override int get hashCode { return Object.hash(statementDescriptor, statementDescriptorKana, statementDescriptorKanji); } 
@override String toString() { return 'AccountPaymentsSettings(statementDescriptor: $statementDescriptor, statementDescriptorKana: $statementDescriptorKana, statementDescriptorKanji: $statementDescriptorKanji)'; } 
 }
