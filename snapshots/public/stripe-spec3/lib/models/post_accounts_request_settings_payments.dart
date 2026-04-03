// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestSettingsPayments {const PostAccountsRequestSettingsPayments({this.statementDescriptor, this.statementDescriptorKana, this.statementDescriptorKanji, });

factory PostAccountsRequestSettingsPayments.fromJson(Map<String, dynamic> json) { return PostAccountsRequestSettingsPayments(
  statementDescriptor: json['statement_descriptor'] as String?,
  statementDescriptorKana: json['statement_descriptor_kana'] as String?,
  statementDescriptorKanji: json['statement_descriptor_kanji'] as String?,
); }

final String? statementDescriptor;

final String? statementDescriptorKana;

final String? statementDescriptorKanji;

Map<String, dynamic> toJson() { return {
  'statement_descriptor': ?statementDescriptor,
  'statement_descriptor_kana': ?statementDescriptorKana,
  'statement_descriptor_kanji': ?statementDescriptorKanji,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'statement_descriptor', 'statement_descriptor_kana', 'statement_descriptor_kanji'}.contains(key)); } 
PostAccountsRequestSettingsPayments copyWith({String Function()? statementDescriptor, String Function()? statementDescriptorKana, String Function()? statementDescriptorKanji, }) { return PostAccountsRequestSettingsPayments(
  statementDescriptor: statementDescriptor != null ? statementDescriptor() : this.statementDescriptor,
  statementDescriptorKana: statementDescriptorKana != null ? statementDescriptorKana() : this.statementDescriptorKana,
  statementDescriptorKanji: statementDescriptorKanji != null ? statementDescriptorKanji() : this.statementDescriptorKanji,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestSettingsPayments &&
          statementDescriptor == other.statementDescriptor &&
          statementDescriptorKana == other.statementDescriptorKana &&
          statementDescriptorKanji == other.statementDescriptorKanji; } 
@override int get hashCode { return Object.hash(statementDescriptor, statementDescriptorKana, statementDescriptorKanji); } 
@override String toString() { return 'PostAccountsRequestSettingsPayments(statementDescriptor: $statementDescriptor, statementDescriptorKana: $statementDescriptorKana, statementDescriptorKanji: $statementDescriptorKanji)'; } 
 }
