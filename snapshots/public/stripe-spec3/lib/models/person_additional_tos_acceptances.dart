// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'person_additional_tos_acceptance.dart';/// 
@immutable final class PersonAdditionalTosAcceptances {const PersonAdditionalTosAcceptances({this.account = const Omittable.absent()});

factory PersonAdditionalTosAcceptances.fromJson(Map<String, dynamic> json) { return PersonAdditionalTosAcceptances(
  account: json.containsKey('account') ? Omittable(json['account'] != null ? PersonAdditionalTosAcceptance.fromJson(json['account'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Details on the legal guardian's acceptance of the main Stripe service agreement.
final Omittable<PersonAdditionalTosAcceptance?> account;

Map<String, dynamic> toJson() { return {
  if (account.isPresent) 'account': account.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account'}.contains(key)); } 
PersonAdditionalTosAcceptances copyWith({Omittable<PersonAdditionalTosAcceptance?>? account}) { return PersonAdditionalTosAcceptances(
  account: account ?? this.account,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PersonAdditionalTosAcceptances &&
          account == other.account; } 
@override int get hashCode { return account.hashCode; } 
@override String toString() { return 'PersonAdditionalTosAcceptances(account: $account)'; } 
 }
