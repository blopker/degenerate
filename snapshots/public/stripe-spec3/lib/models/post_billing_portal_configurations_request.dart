// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_billing_portal_configurations_request_business_profile.dart';import 'post_billing_portal_configurations_request_default_return_url.dart';import 'post_billing_portal_configurations_request_features.dart';import 'post_billing_portal_configurations_request_login_page.dart';import 'post_billing_portal_configurations_request_name.dart';@immutable final class PostBillingPortalConfigurationsRequest {const PostBillingPortalConfigurationsRequest({required this.features, this.businessProfile, this.defaultReturnUrl, this.expand, this.loginPage, this.metadata, this.name, });

factory PostBillingPortalConfigurationsRequest.fromJson(Map<String, dynamic> json) { return PostBillingPortalConfigurationsRequest(
  businessProfile: json['business_profile'] != null ? PostBillingPortalConfigurationsRequestBusinessProfile.fromJson(json['business_profile'] as Map<String, dynamic>) : null,
  defaultReturnUrl: json['default_return_url'] != null ? OneOf2.parse(json['default_return_url'], fromA: (v) => v as String, fromB: (v) => PostBillingPortalConfigurationsRequestDefaultReturnUrlVariant2.fromJson(v as String),) : null,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  features: PostBillingPortalConfigurationsRequestFeatures.fromJson(json['features'] as Map<String, dynamic>),
  loginPage: json['login_page'] != null ? PostBillingPortalConfigurationsRequestLoginPage.fromJson(json['login_page'] as Map<String, dynamic>) : null,
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  name: json['name'] != null ? OneOf2.parse(json['name'], fromA: (v) => v as String, fromB: (v) => PostBillingPortalConfigurationsRequestNameVariant2.fromJson(v as String),) : null,
); }

/// The business information shown to customers in the portal.
final PostBillingPortalConfigurationsRequestBusinessProfile? businessProfile;

/// The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://docs.stripe.com/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
final PostBillingPortalConfigurationsRequestDefaultReturnUrl? defaultReturnUrl;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Information about the features available in the portal.
final PostBillingPortalConfigurationsRequestFeatures features;

/// The hosted login page for this configuration. Learn more about the portal login page in our [integration docs](https://stripe.com/docs/billing/subscriptions/integrating-customer-portal#share).
final PostBillingPortalConfigurationsRequestLoginPage? loginPage;

/// Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
final Map<String,String>? metadata;

/// The name of the configuration.
final PostBillingPortalConfigurationsRequestName? name;

Map<String, dynamic> toJson() { return {
  if (businessProfile != null) 'business_profile': businessProfile?.toJson(),
  if (defaultReturnUrl != null) 'default_return_url': defaultReturnUrl?.toJson(),
  'expand': ?expand,
  'features': features.toJson(),
  if (loginPage != null) 'login_page': loginPage?.toJson(),
  'metadata': ?metadata,
  if (name != null) 'name': name?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('features'); } 
PostBillingPortalConfigurationsRequest copyWith({PostBillingPortalConfigurationsRequestBusinessProfile Function()? businessProfile, PostBillingPortalConfigurationsRequestDefaultReturnUrl Function()? defaultReturnUrl, List<String> Function()? expand, PostBillingPortalConfigurationsRequestFeatures? features, PostBillingPortalConfigurationsRequestLoginPage Function()? loginPage, Map<String, String> Function()? metadata, PostBillingPortalConfigurationsRequestName Function()? name, }) { return PostBillingPortalConfigurationsRequest(
  businessProfile: businessProfile != null ? businessProfile() : this.businessProfile,
  defaultReturnUrl: defaultReturnUrl != null ? defaultReturnUrl() : this.defaultReturnUrl,
  expand: expand != null ? expand() : this.expand,
  features: features ?? this.features,
  loginPage: loginPage != null ? loginPage() : this.loginPage,
  metadata: metadata != null ? metadata() : this.metadata,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingPortalConfigurationsRequest &&
          businessProfile == other.businessProfile &&
          defaultReturnUrl == other.defaultReturnUrl &&
          listEquals(expand, other.expand) &&
          features == other.features &&
          loginPage == other.loginPage &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(businessProfile, defaultReturnUrl, Object.hashAll(expand ?? const []), features, loginPage, metadata, name); } 
@override String toString() { return 'PostBillingPortalConfigurationsRequest(businessProfile: $businessProfile, defaultReturnUrl: $defaultReturnUrl, expand: $expand, features: $features, loginPage: $loginPage, metadata: $metadata, name: $name)'; } 
 }
