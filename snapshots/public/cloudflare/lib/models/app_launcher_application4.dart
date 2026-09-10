// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_logo_url.dart';import 'access_app_policy_link.dart';import 'access_apps_components_schemas_name.dart';import 'access_bg_color.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_domain.dart';import 'access_footer_links2.dart';import 'access_header_bg_color.dart';import 'access_landing_page_design.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_schemas_uuid.dart';import 'access_skip_app_launcher_login_page.dart';import 'access_type.dart';import 'app_launcher_application4_policies.dart';import 'app_launcher_application4_policies_variant3.dart';@immutable final class AppLauncherApplication4 {const AppLauncherApplication4({required this.type, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.domain, this.name, this.sessionDuration, this.appLauncherLogoUrl, this.bgColor, this.footerLinks, this.headerBgColor, this.landingPageDesign, this.skipAppLauncherLoginPage, this.policies, });

factory AppLauncherApplication4.fromJson(Map<String, dynamic> json) {return AppLauncherApplication4(
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json['domain'] != null ? AccessDomain.fromJson(json['domain'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  appLauncherLogoUrl: json['app_launcher_logo_url'] != null ? AccessAppLauncherLogoUrl.fromJson(json['app_launcher_logo_url'] as String) : null,
  bgColor: json['bg_color'] != null ? AccessBgColor.fromJson(json['bg_color'] as String) : null,
  footerLinks: (json['footer_links'] as List<dynamic>?)?.map((e) => AccessFooterLinks2.fromJson(e as Map<String, dynamic>)).toList(),
  headerBgColor: json['header_bg_color'] != null ? AccessHeaderBgColor.fromJson(json['header_bg_color'] as String) : null,
  landingPageDesign: json['landing_page_design'] != null ? AccessLandingPageDesign.fromJson(json['landing_page_design'] as Map<String, dynamic>) : null,
  skipAppLauncherLoginPage: json['skip_app_launcher_login_page'] != null ? AccessSkipAppLauncherLoginPage.fromJson(json['skip_app_launcher_login_page'] as bool) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AccessAppPolicyLink.fromJson(v as Map<String, dynamic>), fromB: (v) => AccessSchemasUuid.fromJson(v as String), fromC: (v) => AppLauncherApplication4PoliciesVariant3.fromJson(v as Map<String, dynamic>),)).toList(),
);}

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

/// The custom URL a user is redirected to when they are denied access to the application when failing identity-based rules.
final AccessCustomDenyUrl? customDenyUrl;

/// The custom URL a user is redirected to when they are denied access to the application when failing non-identity rules.
final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

/// The custom pages that will be displayed when applicable for this application
final List<String>? customPages;

/// The primary hostname and path secured by Access. This domain will be displayed if the app is visible in the App Launcher.
final AccessDomain? domain;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

/// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h. Note: unsupported for infrastructure type applications.
final AccessSchemasSessionDuration? sessionDuration;

/// The application type.
final AccessType type;

/// The image URL of the logo shown in the App Launcher header.
final AccessAppLauncherLogoUrl? appLauncherLogoUrl;

/// The background color of the App Launcher page.
final AccessBgColor? bgColor;

/// The links in the App Launcher footer.
final List<AccessFooterLinks2>? footerLinks;

/// The background color of the App Launcher header.
final AccessHeaderBgColor? headerBgColor;

final AccessLandingPageDesign? landingPageDesign;

/// Determines when to skip the App Launcher landing page.
final AccessSkipAppLauncherLoginPage? skipAppLauncherLoginPage;

/// The policies that Access applies to the application, in ascending order of precedence. Items can reference existing policies or create new policies exclusive to the application.
final List<AppLauncherApplication4Policies>? policies;

Map<String, dynamic> toJson() {return {
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  if (domain != null) 'domain': domain?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type.toJson(),
  if (appLauncherLogoUrl != null) 'app_launcher_logo_url': appLauncherLogoUrl?.toJson(),
  if (bgColor != null) 'bg_color': bgColor?.toJson(),
  if (footerLinks != null) 'footer_links': footerLinks?.map((e) => e.toJson()).toList(),
  if (headerBgColor != null) 'header_bg_color': headerBgColor?.toJson(),
  if (landingPageDesign != null) 'landing_page_design': landingPageDesign?.toJson(),
  if (skipAppLauncherLoginPage != null) 'skip_app_launcher_login_page': skipAppLauncherLoginPage?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('type');}
AppLauncherApplication4 copyWith({List<String>? Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity? Function()? autoRedirectToIdentity, AccessCustomDenyUrl? Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl? Function()? customNonIdentityDenyUrl, List<String>? Function()? customPages, AccessDomain? Function()? domain, AccessAppsComponentsSchemasName? Function()? name, AccessSchemasSessionDuration? Function()? sessionDuration, AccessType? type, AccessAppLauncherLogoUrl? Function()? appLauncherLogoUrl, AccessBgColor? Function()? bgColor, List<AccessFooterLinks2>? Function()? footerLinks, AccessHeaderBgColor? Function()? headerBgColor, AccessLandingPageDesign? Function()? landingPageDesign, AccessSkipAppLauncherLoginPage? Function()? skipAppLauncherLoginPage, List<AppLauncherApplication4Policies>? Function()? policies, }) {return AppLauncherApplication4(
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  customNonIdentityDenyUrl: customNonIdentityDenyUrl != null ? customNonIdentityDenyUrl() : this.customNonIdentityDenyUrl,
  customPages: customPages != null ? customPages() : this.customPages,
  domain: domain != null ? domain() : this.domain,
  name: name != null ? name() : this.name,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  type: type ?? this.type,
  appLauncherLogoUrl: appLauncherLogoUrl != null ? appLauncherLogoUrl() : this.appLauncherLogoUrl,
  bgColor: bgColor != null ? bgColor() : this.bgColor,
  footerLinks: footerLinks != null ? footerLinks() : this.footerLinks,
  headerBgColor: headerBgColor != null ? headerBgColor() : this.headerBgColor,
  landingPageDesign: landingPageDesign != null ? landingPageDesign() : this.landingPageDesign,
  skipAppLauncherLoginPage: skipAppLauncherLoginPage != null ? skipAppLauncherLoginPage() : this.skipAppLauncherLoginPage,
  policies: policies != null ? policies() : this.policies,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AppLauncherApplication4 &&
          listEquals(allowedIdps, other.allowedIdps) &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          customDenyUrl == other.customDenyUrl &&
          customNonIdentityDenyUrl == other.customNonIdentityDenyUrl &&
          listEquals(customPages, other.customPages) &&
          domain == other.domain &&
          name == other.name &&
          sessionDuration == other.sessionDuration &&
          type == other.type &&
          appLauncherLogoUrl == other.appLauncherLogoUrl &&
          bgColor == other.bgColor &&
          listEquals(footerLinks, other.footerLinks) &&
          headerBgColor == other.headerBgColor &&
          landingPageDesign == other.landingPageDesign &&
          skipAppLauncherLoginPage == other.skipAppLauncherLoginPage &&
          listEquals(policies, other.policies);}
@override int get hashCode {return Object.hash(Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), domain, name, sessionDuration, type, appLauncherLogoUrl, bgColor, Object.hashAll(footerLinks ?? const []), headerBgColor, landingPageDesign, skipAppLauncherLoginPage, Object.hashAll(policies ?? const []));}
@override String toString() {return 'AppLauncherApplication4(allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type, appLauncherLogoUrl: $appLauncherLogoUrl, bgColor: $bgColor, footerLinks: $footerLinks, headerBgColor: $headerBgColor, landingPageDesign: $landingPageDesign, skipAppLauncherLoginPage: $skipAppLauncherLoginPage, policies: $policies)';}
}
