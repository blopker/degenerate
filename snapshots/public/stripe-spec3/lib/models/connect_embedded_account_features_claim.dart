// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class ConnectEmbeddedAccountFeaturesClaim {const ConnectEmbeddedAccountFeaturesClaim({required this.disableStripeUserAuthentication, required this.externalAccountCollection, });

factory ConnectEmbeddedAccountFeaturesClaim.fromJson(Map<String, dynamic> json) { return ConnectEmbeddedAccountFeaturesClaim(
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool,
  externalAccountCollection: json['external_account_collection'] as bool,
); }

/// Whether Stripe user authentication is disabled. This value can only be `true` for accounts where `controller.requirement_collection` is `application` for the account. The default value is the opposite of the `external_account_collection` value. For example, if you don't set `external_account_collection`, it defaults to `true` and `disable_stripe_user_authentication` defaults to `false`.
final bool disableStripeUserAuthentication;

/// Whether external account collection is enabled. This feature can only be `false` for accounts where you’re responsible for collecting updated information when requirements are due or change, like Custom accounts. The default value for this feature is `true`.
final bool externalAccountCollection;

Map<String, dynamic> toJson() { return {
  'disable_stripe_user_authentication': disableStripeUserAuthentication,
  'external_account_collection': externalAccountCollection,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('disable_stripe_user_authentication') && json['disable_stripe_user_authentication'] is bool &&
      json.containsKey('external_account_collection') && json['external_account_collection'] is bool; } 
ConnectEmbeddedAccountFeaturesClaim copyWith({bool? disableStripeUserAuthentication, bool? externalAccountCollection, }) { return ConnectEmbeddedAccountFeaturesClaim(
  disableStripeUserAuthentication: disableStripeUserAuthentication ?? this.disableStripeUserAuthentication,
  externalAccountCollection: externalAccountCollection ?? this.externalAccountCollection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConnectEmbeddedAccountFeaturesClaim &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          externalAccountCollection == other.externalAccountCollection; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, externalAccountCollection); } 
@override String toString() { return 'ConnectEmbeddedAccountFeaturesClaim(disableStripeUserAuthentication: $disableStripeUserAuthentication, externalAccountCollection: $externalAccountCollection)'; } 
 }
