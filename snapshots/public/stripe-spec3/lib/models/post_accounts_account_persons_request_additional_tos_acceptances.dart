// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_request_additional_tos_acceptances_account.dart';/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
@immutable final class PostAccountsAccountPersonsRequestAdditionalTosAcceptances {const PostAccountsAccountPersonsRequestAdditionalTosAcceptances({this.account});

factory PostAccountsAccountPersonsRequestAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestAdditionalTosAcceptances(
  account: json['account'] != null ? PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccount? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PostAccountsAccountPersonsRequestAdditionalTosAcceptances copyWith({PostAccountsAccountPersonsRequestAdditionalTosAcceptancesAccount Function()? account}) { return PostAccountsAccountPersonsRequestAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestAdditionalTosAcceptances(account: $account)'; } 
 }
