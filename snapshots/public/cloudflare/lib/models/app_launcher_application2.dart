// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_app_launcher_logo_url.dart';import 'access_app_policy_response.dart';import 'access_bg_color.dart';import 'access_custom_deny_url.dart';import 'access_custom_non_identity_deny_url.dart';import 'access_footer_links2.dart';import 'access_header_bg_color.dart';import 'access_landing_page_design.dart';import 'access_schemas_aud.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_session_duration.dart';import 'access_skip_app_launcher_login_page.dart';import 'access_timestamp.dart';import 'access_type.dart';import 'access_uuid.dart';/// The policies that Access applies to the application.
@immutable final class AppLauncherApplication2 {const AppLauncherApplication2({required this.type, this.aud, this.createdAt, this.id, this.updatedAt, this.allowedIdps, this.autoRedirectToIdentity, this.customDenyUrl, this.customNonIdentityDenyUrl, this.customPages, this.domain, this.name, this.sessionDuration, this.appLauncherLogoUrl, this.bgColor, this.footerLinks, this.headerBgColor, this.landingPageDesign, this.skipAppLauncherLoginPage, this.policies, });

factory AppLauncherApplication2.fromJson(Map<String, dynamic> json) { return AppLauncherApplication2(
  aud: json['aud'] != null ? AccessSchemasAud.fromJson(json['aud'] as String) : null,
  createdAt: json['created_at'] != null ? AccessTimestamp.fromJson(json['created_at'] as String) : null,
  id: json['id'] != null ? AccessUuid.fromJson(json['id'] as String) : null,
  updatedAt: json['updated_at'] != null ? AccessTimestamp.fromJson(json['updated_at'] as String) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  customNonIdentityDenyUrl: json['custom_non_identity_deny_url'] != null ? AccessCustomNonIdentityDenyUrl.fromJson(json['custom_non_identity_deny_url'] as String) : null,
  customPages: (json['custom_pages'] as List<dynamic>?)?.map((e) => e as String).toList(),
  domain: json['domain'],
  name: json['name'],
  sessionDuration: json['session_duration'] != null ? AccessSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  type: AccessType.fromJson(json['type'] as String),
  appLauncherLogoUrl: json['app_launcher_logo_url'] != null ? AccessAppLauncherLogoUrl.fromJson(json['app_launcher_logo_url'] as String) : null,
  bgColor: json['bg_color'] != null ? AccessBgColor.fromJson(json['bg_color'] as String) : null,
  footerLinks: (json['footer_links'] as List<dynamic>?)?.map((e) => AccessFooterLinks2.fromJson(e as Map<String, dynamic>)).toList(),
  headerBgColor: json['header_bg_color'] != null ? AccessHeaderBgColor.fromJson(json['header_bg_color'] as String) : null,
  landingPageDesign: json['landing_page_design'] != null ? AccessLandingPageDesign.fromJson(json['landing_page_design'] as Map<String, dynamic>) : null,
  skipAppLauncherLoginPage: json['skip_app_launcher_login_page'] != null ? AccessSkipAppLauncherLoginPage.fromJson(json['skip_app_launcher_login_page'] as bool) : null,
  policies: (json['policies'] as List<dynamic>?)?.map((e) => AccessAppPolicyResponse.fromJson(e as Map<String, dynamic>)).toList(),
); }

final AccessSchemasAud? aud;

final AccessTimestamp? createdAt;

final AccessUuid? id;

final AccessTimestamp? updatedAt;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessCustomDenyUrl? customDenyUrl;

final AccessCustomNonIdentityDenyUrl? customNonIdentityDenyUrl;

final List<String>? customPages;

final dynamic domain;

final dynamic name;

final AccessSchemasSessionDuration? sessionDuration;

final AccessType type;

/// The image URL of the logo shown in the App Launcher header.
final AccessAppLauncherLogoUrl? appLauncherLogoUrl;

final AccessBgColor? bgColor;

final List<AccessFooterLinks2>? footerLinks;

final AccessHeaderBgColor? headerBgColor;

final AccessLandingPageDesign? landingPageDesign;

final AccessSkipAppLauncherLoginPage? skipAppLauncherLoginPage;

final List<AccessAppPolicyResponse>? policies;

Map<String, dynamic> toJson() { return {
  if (aud != null) 'aud': aud?.toJson(),
  if (createdAt != null) 'created_at': createdAt?.toJson(),
  if (id != null) 'id': id?.toJson(),
  if (updatedAt != null) 'updated_at': updatedAt?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  if (customNonIdentityDenyUrl != null) 'custom_non_identity_deny_url': customNonIdentityDenyUrl?.toJson(),
  'custom_pages': ?customPages,
  'domain': ?domain,
  'name': ?name,
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  'type': type.toJson(),
  if (appLauncherLogoUrl != null) 'app_launcher_logo_url': appLauncherLogoUrl?.toJson(),
  if (bgColor != null) 'bg_color': bgColor?.toJson(),
  if (footerLinks != null) 'footer_links': footerLinks?.map((e) => e.toJson()).toList(),
  if (headerBgColor != null) 'header_bg_color': headerBgColor?.toJson(),
  if (landingPageDesign != null) 'landing_page_design': landingPageDesign?.toJson(),
  if (skipAppLauncherLoginPage != null) 'skip_app_launcher_login_page': skipAppLauncherLoginPage?.toJson(),
  if (policies != null) 'policies': policies?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
AppLauncherApplication2 copyWith({AccessSchemasAud Function()? aud, AccessTimestamp Function()? createdAt, AccessUuid Function()? id, AccessTimestamp Function()? updatedAt, List<String> Function()? allowedIdps, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessCustomDenyUrl Function()? customDenyUrl, AccessCustomNonIdentityDenyUrl Function()? customNonIdentityDenyUrl, List<String> Function()? customPages, dynamic Function()? domain, dynamic Function()? name, AccessSchemasSessionDuration Function()? sessionDuration, AccessType? type, AccessAppLauncherLogoUrl Function()? appLauncherLogoUrl, AccessBgColor Function()? bgColor, List<AccessFooterLinks2> Function()? footerLinks, AccessHeaderBgColor Function()? headerBgColor, AccessLandingPageDesign Function()? landingPageDesign, AccessSkipAppLauncherLoginPage Function()? skipAppLauncherLoginPage, List<AccessAppPolicyResponse> Function()? policies, }) { return AppLauncherApplication2(
  aud: aud != null ? aud() : this.aud,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  id: id != null ? id() : this.id,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
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
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AppLauncherApplication2 &&
          aud == other.aud &&
          createdAt == other.createdAt &&
          id == other.id &&
          updatedAt == other.updatedAt &&
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
          listEquals(policies, other.policies); } 
@override int get hashCode { return Object.hash(aud, createdAt, id, updatedAt, Object.hashAll(allowedIdps ?? const []), autoRedirectToIdentity, customDenyUrl, customNonIdentityDenyUrl, Object.hashAll(customPages ?? const []), domain, name, sessionDuration, type, appLauncherLogoUrl, bgColor, Object.hashAll(footerLinks ?? const []), headerBgColor, landingPageDesign, skipAppLauncherLoginPage, Object.hashAll(policies ?? const [])); } 
@override String toString() { return 'AppLauncherApplication2(aud: $aud, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, allowedIdps: $allowedIdps, autoRedirectToIdentity: $autoRedirectToIdentity, customDenyUrl: $customDenyUrl, customNonIdentityDenyUrl: $customNonIdentityDenyUrl, customPages: $customPages, domain: $domain, name: $name, sessionDuration: $sessionDuration, type: $type, appLauncherLogoUrl: $appLauncherLogoUrl, bgColor: $bgColor, footerLinks: $footerLinks, headerBgColor: $headerBgColor, landingPageDesign: $landingPageDesign, skipAppLauncherLoginPage: $skipAppLauncherLoginPage, policies: $policies)'; } 
 }
