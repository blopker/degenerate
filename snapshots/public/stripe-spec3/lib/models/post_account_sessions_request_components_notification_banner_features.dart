// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostAccountSessionsRequestComponentsNotificationBannerFeatures {const PostAccountSessionsRequestComponentsNotificationBannerFeatures({this.disableStripeUserAuthentication, this.externalAccountCollection, });

factory PostAccountSessionsRequestComponentsNotificationBannerFeatures.fromJson(Map<String, dynamic> json) { return PostAccountSessionsRequestComponentsNotificationBannerFeatures(
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
PostAccountSessionsRequestComponentsNotificationBannerFeatures copyWith({bool Function()? disableStripeUserAuthentication, bool Function()? externalAccountCollection, }) { return PostAccountSessionsRequestComponentsNotificationBannerFeatures(
  disableStripeUserAuthentication: disableStripeUserAuthentication != null ? disableStripeUserAuthentication() : this.disableStripeUserAuthentication,
  externalAccountCollection: externalAccountCollection != null ? externalAccountCollection() : this.externalAccountCollection,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountSessionsRequestComponentsNotificationBannerFeatures &&
          disableStripeUserAuthentication == other.disableStripeUserAuthentication &&
          externalAccountCollection == other.externalAccountCollection; } 
@override int get hashCode { return Object.hash(disableStripeUserAuthentication, externalAccountCollection); } 
@override String toString() { return 'PostAccountSessionsRequestComponentsNotificationBannerFeatures(disableStripeUserAuthentication: $disableStripeUserAuthentication, externalAccountCollection: $externalAccountCollection)'; } 
 }
