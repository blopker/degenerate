// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures {const PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures({this.cardSpendDisputeManagement});

factory PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures(
  cardSpendDisputeManagement: json['card_spend_dispute_management'] as bool?,
); }

final bool? cardSpendDisputeManagement;

Map<String, dynamic> toJson() { return {
  'card_spend_dispute_management': ?cardSpendDisputeManagement,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card_spend_dispute_management'}.contains(key)); } 
PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures copyWith({bool Function()? cardSpendDisputeManagement}) { return PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures(
  cardSpendDisputeManagement: cardSpendDisputeManagement != null ? cardSpendDisputeManagement() : this.cardSpendDisputeManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures &&
          cardSpendDisputeManagement == other.cardSpendDisputeManagement; } 
@override int get hashCode { return cardSpendDisputeManagement.hashCode; } 
@override String toString() { return 'PostAccountSessionsRequestComponentsFinancialAccountTransactionsFeatures(cardSpendDisputeManagement: $cardSpendDisputeManagement)'; } 
 }
