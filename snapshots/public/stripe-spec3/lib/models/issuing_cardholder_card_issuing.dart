// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_cardholder_user_terms_acceptance.dart';/// 
@immutable final class IssuingCardholderCardIssuing {const IssuingCardholderCardIssuing({this.userTermsAcceptance = const Omittable.absent()});

factory IssuingCardholderCardIssuing.fromJson(Map<String, dynamic> json) { return IssuingCardholderCardIssuing(
  userTermsAcceptance: json.containsKey('user_terms_acceptance') ? Omittable(json['user_terms_acceptance'] != null ? IssuingCardholderUserTermsAcceptance.fromJson(json['user_terms_acceptance'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Information about cardholder acceptance of Celtic [Authorized User Terms](https://stripe.com/docs/issuing/cards#accept-authorized-user-terms). Required for cards backed by a Celtic program.
final Omittable<IssuingCardholderUserTermsAcceptance?> userTermsAcceptance;

Map<String, dynamic> toJson() { return {
  if (userTermsAcceptance.isPresent) 'user_terms_acceptance': userTermsAcceptance.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'user_terms_acceptance'}.contains(key)); } 
IssuingCardholderCardIssuing copyWith({Omittable<IssuingCardholderUserTermsAcceptance?>? userTermsAcceptance}) { return IssuingCardholderCardIssuing(
  userTermsAcceptance: userTermsAcceptance ?? this.userTermsAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardholderCardIssuing &&
          userTermsAcceptance == other.userTermsAcceptance; } 
@override int get hashCode { return userTermsAcceptance.hashCode; } 
@override String toString() { return 'IssuingCardholderCardIssuing(userTermsAcceptance: $userTermsAcceptance)'; } 
 }
