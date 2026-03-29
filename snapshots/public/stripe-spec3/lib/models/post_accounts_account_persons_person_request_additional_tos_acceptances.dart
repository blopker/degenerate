// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_accounts_account_persons_person_request_additional_tos_acceptances_account.dart';/// Details on the legal guardian's or authorizer's acceptance of the required Stripe agreements.
final class PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances {const PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances({this.account});

factory PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances(
  account: json['account'] != null ? PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccount.fromJson(json['account'] as Map<String, dynamic>) : null,
); }

final PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccount? account;

Map<String, dynamic> toJson() { return {
  if (account != null) 'account': account?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances copyWith({PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptancesAccount Function()? account}) { return PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances(
  account: account != null ? account() : this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestAdditionalTosAcceptances(account: $account)'; } 
 }
