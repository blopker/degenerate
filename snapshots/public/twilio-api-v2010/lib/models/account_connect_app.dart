// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'connect_app_enum_permission.dart';/// The HTTP method we use to call `deauthorize_callback_url`.
@immutable final class AccountConnectAppDeauthorizeCallbackMethod {const AccountConnectAppDeauthorizeCallbackMethod._(this.value);

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
@immutable final class AccountConnectApp {const AccountConnectApp({this.accountSid = const Omittable.absent(), this.authorizeRedirectUrl = const Omittable.absent(), this.companyName = const Omittable.absent(), this.deauthorizeCallbackMethod = const Omittable.absent(), this.deauthorizeCallbackUrl = const Omittable.absent(), this.description = const Omittable.absent(), this.friendlyName = const Omittable.absent(), this.homepageUrl = const Omittable.absent(), this.permissions = const Omittable.absent(), this.sid = const Omittable.absent(), this.uri = const Omittable.absent(), });

factory AccountConnectApp.fromJson(Map<String, dynamic> json) { return AccountConnectApp(
  accountSid: json.containsKey('account_sid') ? Omittable(json['account_sid'] as String?) : const Omittable.absent(),
  authorizeRedirectUrl: json.containsKey('authorize_redirect_url') ? Omittable(json['authorize_redirect_url'] != null ? Uri.parse(json['authorize_redirect_url'] as String) : null) : const Omittable.absent(),
  companyName: json.containsKey('company_name') ? Omittable(json['company_name'] as String?) : const Omittable.absent(),
  deauthorizeCallbackMethod: json.containsKey('deauthorize_callback_method') ? Omittable(json['deauthorize_callback_method'] != null ? AccountConnectAppDeauthorizeCallbackMethod.fromJson(json['deauthorize_callback_method'] as String) : null) : const Omittable.absent(),
  deauthorizeCallbackUrl: json.containsKey('deauthorize_callback_url') ? Omittable(json['deauthorize_callback_url'] != null ? Uri.parse(json['deauthorize_callback_url'] as String) : null) : const Omittable.absent(),
  description: json.containsKey('description') ? Omittable(json['description'] as String?) : const Omittable.absent(),
  friendlyName: json.containsKey('friendly_name') ? Omittable(json['friendly_name'] as String?) : const Omittable.absent(),
  homepageUrl: json.containsKey('homepage_url') ? Omittable(json['homepage_url'] != null ? Uri.parse(json['homepage_url'] as String) : null) : const Omittable.absent(),
  permissions: json.containsKey('permissions') ? Omittable((json['permissions'] as List<dynamic>?)?.map((e) => ConnectAppEnumPermission.fromJson(e as String)).toList()) : const Omittable.absent(),
  sid: json.containsKey('sid') ? Omittable(json['sid'] as String?) : const Omittable.absent(),
  uri: json.containsKey('uri') ? Omittable(json['uri'] as String?) : const Omittable.absent(),
); }

/// The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the ConnectApp resource.
final Omittable<String?> accountSid;

/// The URL we redirect the user to after we authenticate the user and obtain authorization to access the Connect App.
final Omittable<Uri?> authorizeRedirectUrl;

/// The company name set for the Connect App.
final Omittable<String?> companyName;

/// The HTTP method we use to call `deauthorize_callback_url`.
final Omittable<AccountConnectAppDeauthorizeCallbackMethod?> deauthorizeCallbackMethod;

/// The URL we call using the `deauthorize_callback_method` to de-authorize the Connect App.
final Omittable<Uri?> deauthorizeCallbackUrl;

/// The description of the Connect App.
final Omittable<String?> description;

/// The string that you assigned to describe the resource.
final Omittable<String?> friendlyName;

/// The public URL where users can obtain more information about this Connect App.
final Omittable<Uri?> homepageUrl;

/// The set of permissions that your ConnectApp requests.
final Omittable<List<ConnectAppEnumPermission>?> permissions;

/// The unique string that that we created to identify the ConnectApp resource.
final Omittable<String?> sid;

/// The URI of the resource, relative to `https://api.twilio.com`.
final Omittable<String?> uri;

Map<String, dynamic> toJson() { return {
  if (accountSid.isPresent) 'account_sid': accountSid.value,
  if (authorizeRedirectUrl.isPresent) 'authorize_redirect_url': authorizeRedirectUrl.value?.toString(),
  if (companyName.isPresent) 'company_name': companyName.value,
  if (deauthorizeCallbackMethod.isPresent) 'deauthorize_callback_method': deauthorizeCallbackMethod.value?.toJson(),
  if (deauthorizeCallbackUrl.isPresent) 'deauthorize_callback_url': deauthorizeCallbackUrl.value?.toString(),
  if (description.isPresent) 'description': description.value,
  if (friendlyName.isPresent) 'friendly_name': friendlyName.value,
  if (homepageUrl.isPresent) 'homepage_url': homepageUrl.value?.toString(),
  if (permissions.isPresent) 'permissions': permissions.value?.map((e) => e.toJson()).toList(),
  if (sid.isPresent) 'sid': sid.value,
  if (uri.isPresent) 'uri': uri.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'account_sid', 'authorize_redirect_url', 'company_name', 'deauthorize_callback_method', 'deauthorize_callback_url', 'description', 'friendly_name', 'homepage_url', 'permissions', 'sid', 'uri'}.contains(key)); } 
AccountConnectApp copyWith({Omittable<String?>? accountSid, Omittable<Uri?>? authorizeRedirectUrl, Omittable<String?>? companyName, Omittable<AccountConnectAppDeauthorizeCallbackMethod?>? deauthorizeCallbackMethod, Omittable<Uri?>? deauthorizeCallbackUrl, Omittable<String?>? description, Omittable<String?>? friendlyName, Omittable<Uri?>? homepageUrl, Omittable<List<ConnectAppEnumPermission>?>? permissions, Omittable<String?>? sid, Omittable<String?>? uri, }) { return AccountConnectApp(
  accountSid: accountSid ?? this.accountSid,
  authorizeRedirectUrl: authorizeRedirectUrl ?? this.authorizeRedirectUrl,
  companyName: companyName ?? this.companyName,
  deauthorizeCallbackMethod: deauthorizeCallbackMethod ?? this.deauthorizeCallbackMethod,
  deauthorizeCallbackUrl: deauthorizeCallbackUrl ?? this.deauthorizeCallbackUrl,
  description: description ?? this.description,
  friendlyName: friendlyName ?? this.friendlyName,
  homepageUrl: homepageUrl ?? this.homepageUrl,
  permissions: permissions ?? this.permissions,
  sid: sid ?? this.sid,
  uri: uri ?? this.uri,
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
          permissions.isPresent == other.permissions.isPresent &&
          listEquals(permissions.value, other.permissions.value) &&
          sid == other.sid &&
          uri == other.uri; } 
@override int get hashCode { return Object.hash(accountSid, authorizeRedirectUrl, companyName, deauthorizeCallbackMethod, deauthorizeCallbackUrl, description, friendlyName, homepageUrl, Object.hashAll(permissions.value ?? const []), sid, uri); } 
@override String toString() { return 'AccountConnectApp(accountSid: $accountSid, authorizeRedirectUrl: $authorizeRedirectUrl, companyName: $companyName, deauthorizeCallbackMethod: $deauthorizeCallbackMethod, deauthorizeCallbackUrl: $deauthorizeCallbackUrl, description: $description, friendlyName: $friendlyName, homepageUrl: $homepageUrl, permissions: $permissions, sid: $sid, uri: $uri)'; } 
 }
