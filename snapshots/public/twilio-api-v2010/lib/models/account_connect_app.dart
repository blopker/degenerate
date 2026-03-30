// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_app_enum_permission.dart';/// The HTTP method we use to call `deauthorize_callback_url`.
final class AccountConnectAppDeauthorizeCallbackMethod {const AccountConnectAppDeauthorizeCallbackMethod._(this.value);

factory AccountConnectAppDeauthorizeCallbackMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  'POST' => post,
  _ => AccountConnectAppDeauthorizeCallbackMethod._(json),
}; }

static const AccountConnectAppDeauthorizeCallbackMethod $get = AccountConnectAppDeauthorizeCallbackMethod._('GET');

static const AccountConnectAppDeauthorizeCallbackMethod post = AccountConnectAppDeauthorizeCallbackMethod._('POST');

static const List<AccountConnectAppDeauthorizeCallbackMethod> values = [$get, post];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccountConnectAppDeauthorizeCallbackMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccountConnectAppDeauthorizeCallbackMethod($value)'; } 
 }
final class AccountConnectApp {const AccountConnectApp({this.accountSid, this.authorizeRedirectUrl, this.companyName, this.deauthorizeCallbackMethod, this.deauthorizeCallbackUrl, this.description, this.friendlyName, this.homepageUrl, this.permissions, this.sid, this.uri, });

factory AccountConnectApp.fromJson(Map<String, dynamic> json) { return AccountConnectApp(
  accountSid: json['account_sid'] as String?,
  authorizeRedirectUrl: json['authorize_redirect_url'] != null ? Uri.parse(json['authorize_redirect_url'] as String) : null,
  companyName: json['company_name'] as String?,
  deauthorizeCallbackMethod: json['deauthorize_callback_method'] != null ? AccountConnectAppDeauthorizeCallbackMethod.fromJson(json['deauthorize_callback_method'] as String) : null,
  deauthorizeCallbackUrl: json['deauthorize_callback_url'] != null ? Uri.parse(json['deauthorize_callback_url'] as String) : null,
  description: json['description'] as String?,
  friendlyName: json['friendly_name'] as String?,
  homepageUrl: json['homepage_url'] != null ? Uri.parse(json['homepage_url'] as String) : null,
  permissions: (json['permissions'] as List<dynamic>?)?.map((e) => ConnectAppEnumPermission.fromJson(e as String)).toList(),
  sid: json['sid'] as String?,
  uri: json['uri'] as String?,
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource.
final String? accountSid;

/// The URL we redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
final Uri? authorizeRedirectUrl;

/// The company name set for the Connect App.
final String? companyName;

/// The HTTP method we use to call `deauthorize_callback_url`.
final AccountConnectAppDeauthorizeCallbackMethod? deauthorizeCallbackMethod;

/// The URL we call using the `deauthorize_callback_method` to de-authorize the Connect App.
final Uri? deauthorizeCallbackUrl;

/// The description of the Connect App.
final String? description;

/// The string that you assigned to describe the resource.
final String? friendlyName;

/// The public URL where users can obtain more information about this Connect App.
final Uri? homepageUrl;

/// The set of permissions that your ConnectApp requests.
final List<ConnectAppEnumPermission>? permissions;

/// The unique string that that we created to identify the ConnectApp resource.
final String? sid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final String? uri;

Map<String, dynamic> toJson() { return {
  'account_sid': ?accountSid,
  if (authorizeRedirectUrl != null) 'authorize_redirect_url': authorizeRedirectUrl?.toString(),
  'company_name': ?companyName,
  if (deauthorizeCallbackMethod != null) 'deauthorize_callback_method': deauthorizeCallbackMethod?.toJson(),
  if (deauthorizeCallbackUrl != null) 'deauthorize_callback_url': deauthorizeCallbackUrl?.toString(),
  'description': ?description,
  'friendly_name': ?friendlyName,
  if (homepageUrl != null) 'homepage_url': homepageUrl?.toString(),
  if (permissions != null) 'permissions': permissions?.map((e) => e.toJson()).toList(),
  'sid': ?sid,
  'uri': ?uri,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'authorize_redirect_url', 'company_name', 'deauthorize_callback_method', 'deauthorize_callback_url', 'description', 'friendly_name', 'homepage_url', 'permissions', 'sid', 'uri'}.contains(key)); } 
AccountConnectApp copyWith({String? Function()? accountSid, Uri? Function()? authorizeRedirectUrl, String? Function()? companyName, AccountConnectAppDeauthorizeCallbackMethod? Function()? deauthorizeCallbackMethod, Uri? Function()? deauthorizeCallbackUrl, String? Function()? description, String? Function()? friendlyName, Uri? Function()? homepageUrl, List<ConnectAppEnumPermission>? Function()? permissions, String? Function()? sid, String? Function()? uri, }) { return AccountConnectApp(
  accountSid: accountSid != null ? accountSid() : this.accountSid,
  authorizeRedirectUrl: authorizeRedirectUrl != null ? authorizeRedirectUrl() : this.authorizeRedirectUrl,
  companyName: companyName != null ? companyName() : this.companyName,
  deauthorizeCallbackMethod: deauthorizeCallbackMethod != null ? deauthorizeCallbackMethod() : this.deauthorizeCallbackMethod,
  deauthorizeCallbackUrl: deauthorizeCallbackUrl != null ? deauthorizeCallbackUrl() : this.deauthorizeCallbackUrl,
  description: description != null ? description() : this.description,
  friendlyName: friendlyName != null ? friendlyName() : this.friendlyName,
  homepageUrl: homepageUrl != null ? homepageUrl() : this.homepageUrl,
  permissions: permissions != null ? permissions() : this.permissions,
  sid: sid != null ? sid() : this.sid,
  uri: uri != null ? uri() : this.uri,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountConnectApp &&
          accountSid == other.accountSid &&
          authorizeRedirectUrl == other.authorizeRedirectUrl &&
          companyName == other.companyName &&
          deauthorizeCallbackMethod == other.deauthorizeCallbackMethod &&
          deauthorizeCallbackUrl == other.deauthorizeCallbackUrl &&
          description == other.description &&
          friendlyName == other.friendlyName &&
          homepageUrl == other.homepageUrl &&
          listEquals(permissions, other.permissions) &&
          sid == other.sid &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, authorizeRedirectUrl, companyName, deauthorizeCallbackMethod, deauthorizeCallbackUrl, description, friendlyName, homepageUrl, Object.hashAll(permissions ?? const []), sid, uri); } 
@override String toString() { return 'AccountConnectApp(accountSid: $accountSid, authorizeRedirectUrl: $authorizeRedirectUrl, companyName: $companyName, deauthorizeCallbackMethod: $deauthorizeCallbackMethod, deauthorizeCallbackUrl: $deauthorizeCallbackUrl, description: $description, friendlyName: $friendlyName, homepageUrl: $homepageUrl, permissions: $permissions, sid: $sid, uri: $uri)'; } 
 }
