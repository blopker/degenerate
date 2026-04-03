// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountSessionsRequestComponentsFinancialAccountFeatures {const PostAccountSessionsRequestComponentsFinancialAccountFeatures({this.disableStripeUserAuthentication, this.externalAccountCollection, this.sendMoney, this.transferBalance, });

factory PostAccountSessionsRequestComponentsFinancialAccountFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsFinancialAccountFeatures(
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool?,
  externalAccountCollection: json['external_account_collection'] as bool?,
  sendMoney: json['send_money'] as bool?,
  transferBalance: json['transfer_balance'] as bool?,
); }

final bool? disableStripeUserAuthentication;

final bool? externalAccountCollection;

final bool? sendMoney;

final bool? transferBalance;

Map<String, dynamic> toJson() { return {
  'disable_stripe_user_authentication': ?disableStripeUserAuthentication,
  'external_account_collection': ?externalAccountCollection,
  'send_money': ?sendMoney,
  'transfer_balance': ?transferBalance,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_stripe_user_authentication', 'external_account_collection', 'send_money', 'transfer_balance'}.contains(key)); } 
PostAccountSessionsRequestComponentsFinancialAccountFeatures copyWith({bool Function()? disableStripeUserAuthentication, bool Function()? externalAccountCollection, bool Function()? sendMoney, bool Function()? transferBalance, }) { return PostAccountSessionsRequestComponentsFinancialAccountFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication != null ? disableStripeUserAuthentication() : this.disableStripeUserAuthentication,
  externalAccountCollection: externalAccountCollection != null ? externalAccountCollection() : this.externalAccountCollection,
  sendMoney: sendMoney != null ? sendMoney() : this.sendMoney,
  transferBalance: transferBalance != null ? transferBalance() : this.transferBalance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsFinancialAccountFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          externalAccountCollection == other.externalAccountCollection &&
          sendMoney == other.sendMoney &&
          transferBalance == other.transferBalance; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, externalAccountCollection, sendMoney, transferBalance); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsFinancialAccountFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, externalAccountCollection: $externalAccountCollection, sendMoney: $sendMoney, transferBalance: $transferBalance)'; } 
 }
