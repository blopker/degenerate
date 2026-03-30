// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_people_person_request_additional_tos_acceptances_account.dart';/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
final class PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances {const PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances({this.account});

factory PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances(
  account: json['account'] != null ? PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances copyWith({PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptancesAccount Function()? account}) { return PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestAdditionalTosAcceptances(account: $account)'; } 
 }
