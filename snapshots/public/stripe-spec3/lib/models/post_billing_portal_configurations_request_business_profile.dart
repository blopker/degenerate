// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_business_profile_headline.dart';/// The business information shown to customers in the portal.
final class PostBillingPortalConfigurationsRequestBusinessProfile {const PostBillingPortalConfigurationsRequestBusinessProfile({this.headline, this.privacyPolicyUrl, this.termsOfServiceUrl, });

factory PostBillingPortalConfigurationsRequestBusinessProfile.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequestBusinessProfile(
  headline: json['headline'] != null ? OneOf2.parse(json['headline'], fromA: (v) => v as String, fromB: (v) => PostBillingPortalConfigurationsRequestBusinessProfileHeadlineVariant2.fromJson(v as String),) : null,
  privacyPolicyUrl: json['privacy_policy_url'] as String?,
  termsOfServiceUrl: json['terms_of_service_url'] as String?,
); }

final PostBillingPortalConfigurationsRequestBusinessProfileHeadline? headline;

final String? privacyPolicyUrl;

final String? termsOfServiceUrl;

Map<String, dynamic> toJson() { return {
  if (headline != null) 'headline': headline?.toJson(),
  'privacy_policy_url': ?privacyPolicyUrl,
  'terms_of_service_url': ?termsOfServiceUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostBillingPortalConfigurationsRequestBusinessProfile copyWith({PostBillingPortalConfigurationsRequestBusinessProfileHeadline Function()? headline, String Function()? privacyPolicyUrl, String Function()? termsOfServiceUrl, }) { return PostBillingPortalConfigurationsRequestBusinessProfile(
  headline: headline != null ? headline() : this.headline,
  privacyPolicyUrl: privacyPolicyUrl != null ? privacyPolicyUrl() : this.privacyPolicyUrl,
  termsOfServiceUrl: termsOfServiceUrl != null ? termsOfServiceUrl() : this.termsOfServiceUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequestBusinessProfile &&
          headline == other.headline &&
          privacyPolicyUrl == other.privacyPolicyUrl &&
          termsOfServiceUrl == other.termsOfServiceUrl; } 
@override int get hashCode { return Object.hash(headline, privacyPolicyUrl, termsOfServiceUrl); } 
@override String toString() { return 'PostBillingPortalConfigurationsRequestBusinessProfile(headline: $headline, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl)'; } 
 }
