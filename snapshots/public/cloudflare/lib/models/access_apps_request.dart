// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_launcher_application5.dart';import 'bookmark_application5.dart';import 'browser_isolation_permissions_application5.dart';import 'browser_ssh_application5.dart';import 'browser_vnc_application5.dart';import 'device_enrollment_permissions_application5.dart';import 'saa_s_application5.dart';import 'self_hosted_application5.dart';
@immutable
final class AccessAppsRequest {
  const AccessAppsRequest({this.selfHostedApplication5 = const Omittable.absent(),
this.saaSApplication5 = const Omittable.absent(),
this.browserSshApplication5 = const Omittable.absent(),
this.browserVncApplication5 = const Omittable.absent(),
this.appLauncherApplication5 = const Omittable.absent(),
this.deviceEnrollmentPermissionsApplication5 = const Omittable.absent(),
this.browserIsolationPermissionsApplication5 = const Omittable.absent(),
this.bookmarkApplication5 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessAppsRequest._({required this.rawValue, required this.selfHostedApplication5,
required this.saaSApplication5,
required this.browserSshApplication5,
required this.browserVncApplication5,
required this.appLauncherApplication5,
required this.deviceEnrollmentPermissionsApplication5,
required this.browserIsolationPermissionsApplication5,
required this.bookmarkApplication5,});
  factory AccessAppsRequest.fromJson(Object? json) => AccessAppsRequest._(
    rawValue: Omittable(json),
    selfHostedApplication5: parseAnyOfVariant<SelfHostedApplication5>(json, (value) => SelfHostedApplication5.fromJson(value! as Map<String, dynamic>)),
saaSApplication5: parseAnyOfVariant<SaaSApplication5>(json, (value) => SaaSApplication5.fromJson(value! as Map<String, dynamic>)),
browserSshApplication5: parseAnyOfVariant<BrowserSshApplication5>(json, (value) => BrowserSshApplication5.fromJson(value! as Map<String, dynamic>)),
browserVncApplication5: parseAnyOfVariant<BrowserVncApplication5>(json, (value) => BrowserVncApplication5.fromJson(value! as Map<String, dynamic>)),
appLauncherApplication5: parseAnyOfVariant<AppLauncherApplication5>(json, (value) => AppLauncherApplication5.fromJson(value! as Map<String, dynamic>)),
deviceEnrollmentPermissionsApplication5: parseAnyOfVariant<DeviceEnrollmentPermissionsApplication5>(json, (value) => DeviceEnrollmentPermissionsApplication5.fromJson(value! as Map<String, dynamic>)),
browserIsolationPermissionsApplication5: parseAnyOfVariant<BrowserIsolationPermissionsApplication5>(json, (value) => BrowserIsolationPermissionsApplication5.fromJson(value! as Map<String, dynamic>)),
bookmarkApplication5: parseAnyOfVariant<BookmarkApplication5>(json, (value) => BookmarkApplication5.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SelfHostedApplication5> selfHostedApplication5;
final Omittable<SaaSApplication5> saaSApplication5;
final Omittable<BrowserSshApplication5> browserSshApplication5;
final Omittable<BrowserVncApplication5> browserVncApplication5;
final Omittable<AppLauncherApplication5> appLauncherApplication5;
final Omittable<DeviceEnrollmentPermissionsApplication5> deviceEnrollmentPermissionsApplication5;
final Omittable<BrowserIsolationPermissionsApplication5> browserIsolationPermissionsApplication5;
final Omittable<BookmarkApplication5> bookmarkApplication5;

  /// Whether at least one known variant matched.
  bool get isValid => selfHostedApplication5.isPresent || saaSApplication5.isPresent || browserSshApplication5.isPresent || browserVncApplication5.isPresent || appLauncherApplication5.isPresent || deviceEnrollmentPermissionsApplication5.isPresent || browserIsolationPermissionsApplication5.isPresent || bookmarkApplication5.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (selfHostedApplication5.isPresent) selfHostedApplication5.value?.toJson(),
if (saaSApplication5.isPresent) saaSApplication5.value?.toJson(),
if (browserSshApplication5.isPresent) browserSshApplication5.value?.toJson(),
if (browserVncApplication5.isPresent) browserVncApplication5.value?.toJson(),
if (appLauncherApplication5.isPresent) appLauncherApplication5.value?.toJson(),
if (deviceEnrollmentPermissionsApplication5.isPresent) deviceEnrollmentPermissionsApplication5.value?.toJson(),
if (browserIsolationPermissionsApplication5.isPresent) browserIsolationPermissionsApplication5.value?.toJson(),
if (bookmarkApplication5.isPresent) bookmarkApplication5.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessAppsRequest && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessAppsRequest(${toJson()})';
}
