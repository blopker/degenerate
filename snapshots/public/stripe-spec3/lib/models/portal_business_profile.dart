// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalBusinessProfile {const PortalBusinessProfile({this.headline = const Omittable.absent(), this.privacyPolicyUrl = const Omittable.absent(), this.termsOfServiceUrl = const Omittable.absent(), });

factory PortalBusinessProfile.fromJson(Map<String, dynamic> json) { return PortalBusinessProfile(
  headline: json.containsKey('headline') ? Omittable(json['headline'] as String?) : const Omittable.absent(),
  privacyPolicyUrl: json.containsKey('privacy_policy_url') ? Omittable(json['privacy_policy_url'] as String?) : const Omittable.absent(),
  termsOfServiceUrl: json.containsKey('terms_of_service_url') ? Omittable(json['terms_of_service_url'] as String?) : const Omittable.absent(),
); }

/// The messaging shown to customers in the portal.
final Omittable<String?> headline;

/// A link to the business’s publicly available privacy policy.
final Omittable<String?> privacyPolicyUrl;

/// A link to the business’s publicly available terms of service.
final Omittable<String?> termsOfServiceUrl;

Map<String, dynamic> toJson() { return {
  if (headline.isPresent) 'headline': headline.value,
  if (privacyPolicyUrl.isPresent) 'privacy_policy_url': privacyPolicyUrl.value,
  if (termsOfServiceUrl.isPresent) 'terms_of_service_url': termsOfServiceUrl.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'headline', 'privacy_policy_url', 'terms_of_service_url'}.contains(key)); } 
PortalBusinessProfile copyWith({Omittable<String?>? headline, Omittable<String?>? privacyPolicyUrl, Omittable<String?>? termsOfServiceUrl, }) { return PortalBusinessProfile(
  headline: headline ?? this.headline,
  privacyPolicyUrl: privacyPolicyUrl ?? this.privacyPolicyUrl,
  termsOfServiceUrl: termsOfServiceUrl ?? this.termsOfServiceUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalBusinessProfile &&
          headline == other.headline &&
          privacyPolicyUrl == other.privacyPolicyUrl &&
          termsOfServiceUrl == other.termsOfServiceUrl; } 
@override int get hashCode { return Object.hash(headline, privacyPolicyUrl, termsOfServiceUrl); } 
@override String toString() { return 'PortalBusinessProfile(headline: $headline, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl)'; } 
 }
