// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_allow_iframe.dart';import 'access_app_launcher_visible.dart';import 'access_apps_components_schemas_name.dart';import 'access_apps_components_schemas_session_duration.dart';import 'access_components_schemas_domain.dart';import 'access_custom_deny_message.dart';import 'access_enable_binding_cookie.dart';import 'access_http_only_cookie_attribute.dart';import 'access_logo_url.dart';import 'access_same_site_cookie_attribute.dart';import 'access_schemas_auto_redirect_to_identity.dart';import 'access_schemas_cors_headers.dart';import 'access_service_auth401_redirect.dart';import 'access_skip_interstitial.dart';import 'access_use_clientless_isolation_app_launcher_url.dart';/// The custom URL a user is redirected to when they are denied access to the application.
extension type const AccessSchemasCustomDenyUrl(String value) {
factory AccessSchemasCustomDenyUrl.fromJson(String json) => AccessSchemasCustomDenyUrl(json);

String toJson() => value;

}
/// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if cors_headers is set.
extension type const AccessSchemasOptionsPreflightBypass(bool value) {
factory AccessSchemasOptionsPreflightBypass.fromJson(bool json) => AccessSchemasOptionsPreflightBypass(json);

bool toJson() => value;

}
@immutable final class AccessSchemasSelfHostedProps {const AccessSchemasSelfHostedProps({required this.domain, required this.type, this.allowIframe, this.allowedIdps, this.appLauncherVisible, this.autoRedirectToIdentity, this.corsHeaders, this.customDenyMessage, this.customDenyUrl, this.enableBindingCookie, this.httpOnlyCookieAttribute, this.logoUrl, this.name, this.optionsPreflightBypass, this.sameSiteCookieAttribute, this.serviceAuth401Redirect, this.sessionDuration, this.skipInterstitial, this.useClientlessIsolationAppLauncherUrl, });

factory AccessSchemasSelfHostedProps.fromJson(Map<String, dynamic> json) { return AccessSchemasSelfHostedProps(
  allowIframe: json['allow_iframe'] != null ? AccessAllowIframe.fromJson(json['allow_iframe'] as bool) : null,
  allowedIdps: (json['allowed_idps'] as List<dynamic>?)?.map((e) => e as String).toList(),
  appLauncherVisible: json['app_launcher_visible'] != null ? AccessAppLauncherVisible.fromJson(json['app_launcher_visible'] as bool) : null,
  autoRedirectToIdentity: json['auto_redirect_to_identity'] != null ? AccessSchemasAutoRedirectToIdentity.fromJson(json['auto_redirect_to_identity'] as bool) : null,
  corsHeaders: json['cors_headers'] != null ? AccessSchemasCorsHeaders.fromJson(json['cors_headers'] as Map<String, dynamic>) : null,
  customDenyMessage: json['custom_deny_message'] != null ? AccessCustomDenyMessage.fromJson(json['custom_deny_message'] as String) : null,
  customDenyUrl: json['custom_deny_url'] != null ? AccessSchemasCustomDenyUrl.fromJson(json['custom_deny_url'] as String) : null,
  domain: AccessComponentsSchemasDomain.fromJson(json['domain'] as String),
  enableBindingCookie: json['enable_binding_cookie'] != null ? AccessEnableBindingCookie.fromJson(json['enable_binding_cookie'] as bool) : null,
  httpOnlyCookieAttribute: json['http_only_cookie_attribute'] != null ? AccessHttpOnlyCookieAttribute.fromJson(json['http_only_cookie_attribute'] as bool) : null,
  logoUrl: json['logo_url'] != null ? AccessLogoUrl.fromJson(json['logo_url'] as String) : null,
  name: json['name'] != null ? AccessAppsComponentsSchemasName.fromJson(json['name'] as String) : null,
  optionsPreflightBypass: json['options_preflight_bypass'] != null ? AccessSchemasOptionsPreflightBypass.fromJson(json['options_preflight_bypass'] as bool) : null,
  sameSiteCookieAttribute: json['same_site_cookie_attribute'] != null ? AccessSameSiteCookieAttribute.fromJson(json['same_site_cookie_attribute'] as String) : null,
  serviceAuth401Redirect: json['service_auth_401_redirect'] != null ? AccessServiceAuth401Redirect.fromJson(json['service_auth_401_redirect'] as bool) : null,
  sessionDuration: json['session_duration'] != null ? AccessAppsComponentsSchemasSessionDuration.fromJson(json['session_duration'] as String) : null,
  skipInterstitial: json['skip_interstitial'] != null ? AccessSkipInterstitial.fromJson(json['skip_interstitial'] as bool) : null,
  type: json['type'] as String,
  useClientlessIsolationAppLauncherUrl: json['use_clientless_isolation_app_launcher_url'] != null ? AccessUseClientlessIsolationAppLauncherUrl.fromJson(json['use_clientless_isolation_app_launcher_url'] as bool) : null,
); }

/// Enables loading application content in an iFrame.
final AccessAllowIframe? allowIframe;

/// The identity providers your users can select when connecting to this application. Defaults to all IdPs configured in your account.
final List<String>? allowedIdps;

/// Displays the application in the App Launcher.
final AccessAppLauncherVisible? appLauncherVisible;

/// When set to `true`, users skip the identity provider selection step during login. You must specify only one identity provider in allowed_idps.
final AccessSchemasAutoRedirectToIdentity? autoRedirectToIdentity;

final AccessSchemasCorsHeaders? corsHeaders;

/// The custom error message shown to a user when they are denied access to the application.
final AccessCustomDenyMessage? customDenyMessage;

/// The custom URL a user is redirected to when they are denied access to the application.
final AccessSchemasCustomDenyUrl? customDenyUrl;

/// The domain and path that Access will secure.
final AccessComponentsSchemasDomain domain;

/// Enables the binding cookie, which increases security against compromised authorization tokens and CSRF attacks.
final AccessEnableBindingCookie? enableBindingCookie;

/// Enables the HttpOnly cookie attribute, which increases security against XSS attacks.
final AccessHttpOnlyCookieAttribute? httpOnlyCookieAttribute;

/// The image URL for the logo shown in the App Launcher dashboard.
final AccessLogoUrl? logoUrl;

/// The name of the application.
final AccessAppsComponentsSchemasName? name;

/// Allows options preflight requests to bypass Access authentication and go directly to the origin. Cannot turn on if cors_headers is set.
final AccessSchemasOptionsPreflightBypass? optionsPreflightBypass;

/// Sets the SameSite cookie setting, which provides increased security against CSRF attacks.
final AccessSameSiteCookieAttribute? sameSiteCookieAttribute;

final AccessServiceAuth401Redirect? serviceAuth401Redirect;

/// The amount of time that tokens issued for this application will be valid. Must be in the format `300ms` or `2h45m`. Valid time units are: ns, us (or µs), ms, s, m, h.
final AccessAppsComponentsSchemasSessionDuration? sessionDuration;

final AccessSkipInterstitial? skipInterstitial;

/// The application type.
final String type;

final AccessUseClientlessIsolationAppLauncherUrl? useClientlessIsolationAppLauncherUrl;

Map<String, dynamic> toJson() { return {
  if (allowIframe != null) 'allow_iframe': allowIframe?.toJson(),
  'allowed_idps': ?allowedIdps,
  if (appLauncherVisible != null) 'app_launcher_visible': appLauncherVisible?.toJson(),
  if (autoRedirectToIdentity != null) 'auto_redirect_to_identity': autoRedirectToIdentity?.toJson(),
  if (corsHeaders != null) 'cors_headers': corsHeaders?.toJson(),
  if (customDenyMessage != null) 'custom_deny_message': customDenyMessage?.toJson(),
  if (customDenyUrl != null) 'custom_deny_url': customDenyUrl?.toJson(),
  'domain': domain.toJson(),
  if (enableBindingCookie != null) 'enable_binding_cookie': enableBindingCookie?.toJson(),
  if (httpOnlyCookieAttribute != null) 'http_only_cookie_attribute': httpOnlyCookieAttribute?.toJson(),
  if (logoUrl != null) 'logo_url': logoUrl?.toJson(),
  if (name != null) 'name': name?.toJson(),
  if (optionsPreflightBypass != null) 'options_preflight_bypass': optionsPreflightBypass?.toJson(),
  if (sameSiteCookieAttribute != null) 'same_site_cookie_attribute': sameSiteCookieAttribute?.toJson(),
  if (serviceAuth401Redirect != null) 'service_auth_401_redirect': serviceAuth401Redirect?.toJson(),
  if (sessionDuration != null) 'session_duration': sessionDuration?.toJson(),
  if (skipInterstitial != null) 'skip_interstitial': skipInterstitial?.toJson(),
  'type': type,
  if (useClientlessIsolationAppLauncherUrl != null) 'use_clientless_isolation_app_launcher_url': useClientlessIsolationAppLauncherUrl?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('domain') &&
      json.containsKey('type') && json['type'] is String; } 
AccessSchemasSelfHostedProps copyWith({AccessAllowIframe Function()? allowIframe, List<String> Function()? allowedIdps, AccessAppLauncherVisible Function()? appLauncherVisible, AccessSchemasAutoRedirectToIdentity Function()? autoRedirectToIdentity, AccessSchemasCorsHeaders Function()? corsHeaders, AccessCustomDenyMessage Function()? customDenyMessage, AccessSchemasCustomDenyUrl Function()? customDenyUrl, AccessComponentsSchemasDomain? domain, AccessEnableBindingCookie Function()? enableBindingCookie, AccessHttpOnlyCookieAttribute Function()? httpOnlyCookieAttribute, AccessLogoUrl Function()? logoUrl, AccessAppsComponentsSchemasName Function()? name, AccessSchemasOptionsPreflightBypass Function()? optionsPreflightBypass, AccessSameSiteCookieAttribute Function()? sameSiteCookieAttribute, AccessServiceAuth401Redirect Function()? serviceAuth401Redirect, AccessAppsComponentsSchemasSessionDuration Function()? sessionDuration, AccessSkipInterstitial Function()? skipInterstitial, String? type, AccessUseClientlessIsolationAppLauncherUrl Function()? useClientlessIsolationAppLauncherUrl, }) { return AccessSchemasSelfHostedProps(
  allowIframe: allowIframe != null ? allowIframe() : this.allowIframe,
  allowedIdps: allowedIdps != null ? allowedIdps() : this.allowedIdps,
  appLauncherVisible: appLauncherVisible != null ? appLauncherVisible() : this.appLauncherVisible,
  autoRedirectToIdentity: autoRedirectToIdentity != null ? autoRedirectToIdentity() : this.autoRedirectToIdentity,
  corsHeaders: corsHeaders != null ? corsHeaders() : this.corsHeaders,
  customDenyMessage: customDenyMessage != null ? customDenyMessage() : this.customDenyMessage,
  customDenyUrl: customDenyUrl != null ? customDenyUrl() : this.customDenyUrl,
  domain: domain ?? this.domain,
  enableBindingCookie: enableBindingCookie != null ? enableBindingCookie() : this.enableBindingCookie,
  httpOnlyCookieAttribute: httpOnlyCookieAttribute != null ? httpOnlyCookieAttribute() : this.httpOnlyCookieAttribute,
  logoUrl: logoUrl != null ? logoUrl() : this.logoUrl,
  name: name != null ? name() : this.name,
  optionsPreflightBypass: optionsPreflightBypass != null ? optionsPreflightBypass() : this.optionsPreflightBypass,
  sameSiteCookieAttribute: sameSiteCookieAttribute != null ? sameSiteCookieAttribute() : this.sameSiteCookieAttribute,
  serviceAuth401Redirect: serviceAuth401Redirect != null ? serviceAuth401Redirect() : this.serviceAuth401Redirect,
  sessionDuration: sessionDuration != null ? sessionDuration() : this.sessionDuration,
  skipInterstitial: skipInterstitial != null ? skipInterstitial() : this.skipInterstitial,
  type: type ?? this.type,
  useClientlessIsolationAppLauncherUrl: useClientlessIsolationAppLauncherUrl != null ? useClientlessIsolationAppLauncherUrl() : this.useClientlessIsolationAppLauncherUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasSelfHostedProps &&
          allowIframe == other.allowIframe &&
          listEquals(allowedIdps, other.allowedIdps) &&
          appLauncherVisible == other.appLauncherVisible &&
          autoRedirectToIdentity == other.autoRedirectToIdentity &&
          corsHeaders == other.corsHeaders &&
          customDenyMessage == other.customDenyMessage &&
          customDenyUrl == other.customDenyUrl &&
          domain == other.domain &&
          enableBindingCookie == other.enableBindingCookie &&
          httpOnlyCookieAttribute == other.httpOnlyCookieAttribute &&
          logoUrl == other.logoUrl &&
          name == other.name &&
          optionsPreflightBypass == other.optionsPreflightBypass &&
          sameSiteCookieAttribute == other.sameSiteCookieAttribute &&
          serviceAuth401Redirect == other.serviceAuth401Redirect &&
          sessionDuration == other.sessionDuration &&
          skipInterstitial == other.skipInterstitial &&
          type == other.type &&
          useClientlessIsolationAppLauncherUrl == other.useClientlessIsolationAppLauncherUrl; } 
@override int get hashCode { return Object.hash(allowIframe, Object.hashAll(allowedIdps ?? const []), appLauncherVisible, autoRedirectToIdentity, corsHeaders, customDenyMessage, customDenyUrl, domain, enableBindingCookie, httpOnlyCookieAttribute, logoUrl, name, optionsPreflightBypass, sameSiteCookieAttribute, serviceAuth401Redirect, sessionDuration, skipInterstitial, type, useClientlessIsolationAppLauncherUrl); } 
@override String toString() { return 'AccessSchemasSelfHostedProps(allowIframe: $allowIframe, allowedIdps: $allowedIdps, appLauncherVisible: $appLauncherVisible, autoRedirectToIdentity: $autoRedirectToIdentity, corsHeaders: $corsHeaders, customDenyMessage: $customDenyMessage, customDenyUrl: $customDenyUrl, domain: $domain, enableBindingCookie: $enableBindingCookie, httpOnlyCookieAttribute: $httpOnlyCookieAttribute, logoUrl: $logoUrl, name: $name, optionsPreflightBypass: $optionsPreflightBypass, sameSiteCookieAttribute: $sameSiteCookieAttribute, serviceAuth401Redirect: $serviceAuth401Redirect, sessionDuration: $sessionDuration, skipInterstitial: $skipInterstitial, type: $type, useClientlessIsolationAppLauncherUrl: $useClientlessIsolationAppLauncherUrl)'; } 
 }
