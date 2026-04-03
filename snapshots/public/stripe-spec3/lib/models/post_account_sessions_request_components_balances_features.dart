// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountSessionsRequestComponentsBalancesFeatures {const PostAccountSessionsRequestComponentsBalancesFeatures({this.disableStripeUserAuthentication, this.editPayoutSchedule, this.externalAccountCollection, this.instantPayouts, this.standardPayouts, });

factory PostAccountSessionsRequestComponentsBalancesFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsBalancesFeatures(
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool?,
  editPayoutSchedule: json['edit_payout_schedule'] as bool?,
  externalAccountCollection: json['external_account_collection'] as bool?,
  instantPayouts: json['instant_payouts'] as bool?,
  standardPayouts: json['standard_payouts'] as bool?,
); }

final bool? disableStripeUserAuthentication;

final bool? editPayoutSchedule;

final bool? externalAccountCollection;

final bool? instantPayouts;

final bool? standardPayouts;

Map<String, dynamic> toJson() { return {
  'disable_stripe_user_authentication': ?disableStripeUserAuthentication,
  'edit_payout_schedule': ?editPayoutSchedule,
  'external_account_collection': ?externalAccountCollection,
  'instant_payouts': ?instantPayouts,
  'standard_payouts': ?standardPayouts,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_stripe_user_authentication', 'edit_payout_schedule', 'external_account_collection', 'instant_payouts', 'standard_payouts'}.contains(key)); } 
PostAccountSessionsRequestComponentsBalancesFeatures copyWith({bool Function()? disableStripeUserAuthentication, bool Function()? editPayoutSchedule, bool Function()? externalAccountCollection, bool Function()? instantPayouts, bool Function()? standardPayouts, }) { return PostAccountSessionsRequestComponentsBalancesFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication != null ? disableStripeUserAuthentication() : this.disableStripeUserAuthentication,
  editPayoutSchedule: editPayoutSchedule != null ? editPayoutSchedule() : this.editPayoutSchedule,
  externalAccountCollection: externalAccountCollection != null ? externalAccountCollection() : this.externalAccountCollection,
  instantPayouts: instantPayouts != null ? instantPayouts() : this.instantPayouts,
  standardPayouts: standardPayouts != null ? standardPayouts() : this.standardPayouts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsBalancesFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          editPayoutSchedule == other.editPayoutSchedule &&
          externalAccountCollection == other.externalAccountCollection &&
          instantPayouts == other.instantPayouts &&
          standardPayouts == other.standardPayouts; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, editPayoutSchedule, externalAccountCollection, instantPayouts, standardPayouts); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsBalancesFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, editPayoutSchedule: $editPayoutSchedule, externalAccountCollection: $externalAccountCollection, instantPayouts: $instantPayouts, standardPayouts: $standardPayouts)'; } 
 }
