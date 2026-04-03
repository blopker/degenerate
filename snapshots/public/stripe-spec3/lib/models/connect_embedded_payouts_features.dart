// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ConnectEmbeddedPayoutsFeatures {const ConnectEmbeddedPayoutsFeatures({required this.disableStripeUserAuthentication, required this.editPayoutSchedule, required this.externalAccountCollection, required this.instantPayouts, required this.standardPayouts, });

factory ConnectEmbeddedPayoutsFeatures.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedPayoutsFeatures(
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool,
  editPayoutSchedule: json['edit_payout_schedule'] as bool,
  externalAccountCollection: json['external_account_collection'] as bool,
  instantPayouts: json['instant_payouts'] as bool,
  standardPayouts: json['standard_payouts'] as bool,
); }

/// Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
final bool disableStripeUserAuthentication;

/// Whether to allow payout schedule to be changed. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
final bool editPayoutSchedule;

/// Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
final bool externalAccountCollection;

/// Whether to allow creation of instant payouts. The default value is `enabled` when Stripe is responsible for negative account balances, and `use_dashboard_rules` otherwise.
final bool instantPayouts;

/// Whether to allow creation of standard payouts. Defaults to `true` when `controller.losses.payments` is set to `stripe` for the account, otherwise `false`.
final bool standardPayouts;

Map<String, dynamic> toJson() { return {
  'disable_stripe_user_authentication': disableStripeUserAuthentication,
  'edit_payout_schedule': editPayoutSchedule,
  'external_account_collection': externalAccountCollection,
  'instant_payouts': instantPayouts,
  'standard_payouts': standardPayouts,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('disable_stripe_user_authentication') && json['disable_stripe_user_authentication'] is bool &&
      json.containsKey('edit_payout_schedule') && json['edit_payout_schedule'] is bool &&
      json.containsKey('external_account_collection') && json['external_account_collection'] is bool &&
      json.containsKey('instant_payouts') && json['instant_payouts'] is bool &&
      json.containsKey('standard_payouts') && json['standard_payouts'] is bool; } 
ConnectEmbeddedPayoutsFeatures copyWith({bool? disableStripeUserAuthentication, bool? editPayoutSchedule, bool? externalAccountCollection, bool? instantPayouts, bool? standardPayouts, }) { return ConnectEmbeddedPayoutsFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication ?? this.disableStripeUserAuthentication,
  editPayoutSchedule: editPayoutSchedule ?? this.editPayoutSchedule,
  externalAccountCollection: externalAccountCollection ?? this.externalAccountCollection,
  instantPayouts: instantPayouts ?? this.instantPayouts,
  standardPayouts: standardPayouts ?? this.standardPayouts,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedPayoutsFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          editPayoutSchedule == other.editPayoutSchedule &&
          externalAccountCollection == other.externalAccountCollection &&
          instantPayouts == other.instantPayouts &&
          standardPayouts == other.standardPayouts; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, editPayoutSchedule, externalAccountCollection, instantPayouts, standardPayouts); } 
@override String toString() { return 'ConnectEmbeddedPayoutsFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, editPayoutSchedule: $editPayoutSchedule, externalAccountCollection: $externalAccountCollection, instantPayouts: $instantPayouts, standardPayouts: $standardPayouts)'; } 
 }
