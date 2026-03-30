// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountSessionsRequestComponentsAccountOnboardingFeatures {const PostAccountSessionsRequestComponentsAccountOnboardingFeatures({this.disableStripeUserAuthentication, this.externalAccountCollection, });

factory PostAccountSessionsRequestComponentsAccountOnboardingFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsAccountOnboardingFeatures(
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
PostAccountSessionsRequestComponentsAccountOnboardingFeatures copyWith({bool Function()? disableStripeUserAuthentication, bool Function()? externalAccountCollection, }) { return PostAccountSessionsRequestComponentsAccountOnboardingFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication != null ? disableStripeUserAuthentication() : this.disableStripeUserAuthentication,
  externalAccountCollection: externalAccountCollection != null ? externalAccountCollection() : this.externalAccountCollection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsAccountOnboardingFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          externalAccountCollection == other.externalAccountCollection; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, externalAccountCollection); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsAccountOnboardingFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, externalAccountCollection: $externalAccountCollection)'; } 
 }
