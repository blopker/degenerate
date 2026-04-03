// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_issuing_cardholders_cardholder_request_individual_card_issuing_user_terms_acceptance.dart';@immutable final class PostIssuingCardholdersCardholderRequestIndividualCardIssuing {const PostIssuingCardholdersCardholderRequestIndividualCardIssuing({this.userTermsAcceptance});

factory PostIssuingCardholdersCardholderRequestIndividualCardIssuing.fromJson(Map<String, dynamic> json) { return PostIssuingCardholdersCardholderRequestIndividualCardIssuing(
  userTermsAcceptance: json['user_terms_acceptance'] != null ? PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptance.fromJson(json['user_terms_acceptance'] as Map<String, dynamic>) : null,
); }

final PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptance? userTermsAcceptance;

Map<String, dynamic> toJson() { return {
  if (userTermsAcceptance != null) 'user_terms_acceptance': userTermsAcceptance?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'user_terms_acceptance'}.contains(key)); } 
PostIssuingCardholdersCardholderRequestIndividualCardIssuing copyWith({PostIssuingCardholdersCardholderRequestIndividualCardIssuingUserTermsAcceptance Function()? userTermsAcceptance}) { return PostIssuingCardholdersCardholderRequestIndividualCardIssuing(
  userTermsAcceptance: userTermsAcceptance != null ? userTermsAcceptance() : this.userTermsAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostIssuingCardholdersCardholderRequestIndividualCardIssuing &&
          userTermsAcceptance == other.userTermsAcceptance; } 
@override int get hashCode { return userTermsAcceptance.hashCode; } 
@override String toString() { return 'PostIssuingCardholdersCardholderRequestIndividualCardIssuing(userTermsAcceptance: $userTermsAcceptance)'; } 
 }
