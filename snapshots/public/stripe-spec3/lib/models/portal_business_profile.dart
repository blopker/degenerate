// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PortalBusinessProfile {const PortalBusinessProfile({this.headline, this.privacyPolicyUrl, this.termsOfServiceUrl, });

factory PortalBusinessProfile.fromJson(Map<String, dynamic> json) { return PortalBusinessProfile(
  headline: json['headline'] as String?,
  privacyPolicyUrl: json['privacy_policy_url'] as String?,
  termsOfServiceUrl: json['terms_of_service_url'] as String?,
); }

/// The messaging shown to customers in the portal.
final String? headline;

/// A link to the business’s publicly available privacy policy.
final String? privacyPolicyUrl;

/// A link to the business’s publicly available terms of service.
final String? termsOfServiceUrl;

Map<String, dynamic> toJson() { return {
  'headline': ?headline,
  'privacy_policy_url': ?privacyPolicyUrl,
  'terms_of_service_url': ?termsOfServiceUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'headline', 'privacy_policy_url', 'terms_of_service_url'}.contains(key)); } 
PortalBusinessProfile copyWith({String? Function()? headline, String? Function()? privacyPolicyUrl, String? Function()? termsOfServiceUrl, }) { return PortalBusinessProfile(
  headline: headline != null ? headline() : this.headline,
  privacyPolicyUrl: privacyPolicyUrl != null ? privacyPolicyUrl() : this.privacyPolicyUrl,
  termsOfServiceUrl: termsOfServiceUrl != null ? termsOfServiceUrl() : this.termsOfServiceUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalBusinessProfile &&
          headline == other.headline &&
          privacyPolicyUrl == other.privacyPolicyUrl &&
          termsOfServiceUrl == other.termsOfServiceUrl; } 
@override int get hashCode { return Object.hash(headline, privacyPolicyUrl, termsOfServiceUrl); } 
@override String toString() { return 'PortalBusinessProfile(headline: $headline, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl)'; } 
 }
