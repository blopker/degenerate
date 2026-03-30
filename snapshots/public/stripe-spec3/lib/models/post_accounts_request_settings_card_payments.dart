// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_request_settings_card_payments_decline_on.dart';import 'post_accounts_request_settings_card_payments_statement_descriptor_prefix_kana.dart';import 'post_accounts_request_settings_card_payments_statement_descriptor_prefix_kanji.dart';final class PostAccountsRequestSettingsCardPayments {const PostAccountsRequestSettingsCardPayments({this.declineOn, this.statementDescriptorPrefix, this.statementDescriptorPrefixKana, this.statementDescriptorPrefixKanji, });

factory PostAccountsRequestSettingsCardPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestSettingsCardPayments(
  declineOn: json['decline_on'] != null ? PostAccountsRequestSettingsCardPaymentsDeclineOn.fromJson(json['decline_on'] as Map<String, dynamic>) : null,
  statementDescriptorPrefix: json['statement_descriptor_prefix'] as String?,
  statementDescriptorPrefixKana: json['statement_descriptor_prefix_kana'] != null ? OneOf2.parse(json['statement_descriptor_prefix_kana'], fromA: (v) => v as String, fromB: (v) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanaVariant2.fromJson(v as String),) : null,
  statementDescriptorPrefixKanji: json['statement_descriptor_prefix_kanji'] != null ? OneOf2.parse(json['statement_descriptor_prefix_kanji'], fromA: (v) => v as String, fromB: (v) => PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanjiVariant2.fromJson(v as String),) : null,
); }

final PostAccountsRequestSettingsCardPaymentsDeclineOn? declineOn;

final String? statementDescriptorPrefix;

final PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana? statementDescriptorPrefixKana;

final PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji? statementDescriptorPrefixKanji;

Map<String, dynamic> toJson() { return {
  if (declineOn != null) 'decline_on': declineOn?.toJson(),
  'statement_descriptor_prefix': ?statementDescriptorPrefix,
  if (statementDescriptorPrefixKana != null) 'statement_descriptor_prefix_kana': statementDescriptorPrefixKana?.toJson(),
  if (statementDescriptorPrefixKanji != null) 'statement_descriptor_prefix_kanji': statementDescriptorPrefixKanji?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'decline_on', 'statement_descriptor_prefix', 'statement_descriptor_prefix_kana', 'statement_descriptor_prefix_kanji'}.contains(key)); } 
PostAccountsRequestSettingsCardPayments copyWith({PostAccountsRequestSettingsCardPaymentsDeclineOn Function()? declineOn, String Function()? statementDescriptorPrefix, PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKana Function()? statementDescriptorPrefixKana, PostAccountsRequestSettingsCardPaymentsStatementDescriptorPrefixKanji Function()? statementDescriptorPrefixKanji, }) { return PostAccountsRequestSettingsCardPayments(
  declineOn: declineOn != null ? declineOn() : this.declineOn,
  statementDescriptorPrefix: statementDescriptorPrefix != null ? statementDescriptorPrefix() : this.statementDescriptorPrefix,
  statementDescriptorPrefixKana: statementDescriptorPrefixKana != null ? statementDescriptorPrefixKana() : this.statementDescriptorPrefixKana,
  statementDescriptorPrefixKanji: statementDescriptorPrefixKanji != null ? statementDescriptorPrefixKanji() : this.statementDescriptorPrefixKanji,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestSettingsCardPayments &&
          declineOn == other.declineOn &&
          statementDescriptorPrefix == other.statementDescriptorPrefix &&
          statementDescriptorPrefixKana == other.statementDescriptorPrefixKana &&
          statementDescriptorPrefixKanji == other.statementDescriptorPrefixKanji; } 
@override int get hashCode { return Object.hash(declineOn, statementDescriptorPrefix, statementDescriptorPrefixKana, statementDescriptorPrefixKanji); } 
@override String toString() { return 'PostAccountsRequestSettingsCardPayments(declineOn: $declineOn, statementDescriptorPrefix: $statementDescriptorPrefix, statementDescriptorPrefixKana: $statementDescriptorPrefixKana, statementDescriptorPrefixKanji: $statementDescriptorPrefixKanji)'; } 
 }
