// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountSessionsRequestComponentsAccountManagementFeatures {const PostAccountSessionsRequestComponentsAccountManagementFeatures({this.disableStripeUserAuthentication, this.externalAccountCollection, });

factory PostAccountSessionsRequestComponentsAccountManagementFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsAccountManagementFeatures(
  disableStripeUserAuthentication: json['disable_stripe_user_authentication'] as bool?,
  externalAccountCollection: json['external_account_collection'] as bool?,
); }

final bool? disableStripeUserAuthentication;

final bool? externalAccountCollection;

Map<String, dynamic> toJson() { return {
  'disable_stripe_user_authentication': ?disableStripeUserAuthentication,
  'external_account_collection': ?externalAccountCollection,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'disable_stripe_user_authentication', 'external_account_collection'}.contains(key)); } 
PostAccountSessionsRequestComponentsAccountManagementFeatures copyWith({bool Function()? disableStripeUserAuthentication, bool Function()? externalAccountCollection, }) { return PostAccountSessionsRequestComponentsAccountManagementFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication != null ? disableStripeUserAuthentication() : this.disableStripeUserAuthentication,
  externalAccountCollection: externalAccountCollection != null ? externalAccountCollection() : this.externalAccountCollection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsAccountManagementFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          externalAccountCollection == other.externalAccountCollection; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, externalAccountCollection); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsAccountManagementFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, externalAccountCollection: $externalAccountCollection)'; } 
 }
