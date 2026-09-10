// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'app_launcher_application3.dart';import 'bookmark_application3.dart';import 'browser_isolation_permissions_application3.dart';import 'browser_ssh_application3.dart';import 'browser_vnc_application3.dart';import 'device_enrollment_permissions_application3.dart';import 'saa_s_application3.dart';import 'self_hosted_application3.dart';
@immutable
final class AccessApps {
  const AccessApps({this.selfHostedApplication3 = const Omittable.absent(),
this.saaSApplication3 = const Omittable.absent(),
this.browserSshApplication3 = const Omittable.absent(),
this.browserVncApplication3 = const Omittable.absent(),
this.appLauncherApplication3 = const Omittable.absent(),
this.deviceEnrollmentPermissionsApplication3 = const Omittable.absent(),
this.browserIsolationPermissionsApplication3 = const Omittable.absent(),
this.bookmarkApplication3 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const AccessApps._({required this.rawValue, required this.selfHostedApplication3,
required this.saaSApplication3,
required this.browserSshApplication3,
required this.browserVncApplication3,
required this.appLauncherApplication3,
required this.deviceEnrollmentPermissionsApplication3,
required this.browserIsolationPermissionsApplication3,
required this.bookmarkApplication3,});
  factory AccessApps.fromJson(Object? json) => AccessApps._(
    rawValue: Omittable(json),
    selfHostedApplication3: parseAnyOfVariant<SelfHostedApplication3>(json, (value) => SelfHostedApplication3.fromJson(value! as Map<String, dynamic>)),
saaSApplication3: parseAnyOfVariant<SaaSApplication3>(json, (value) => SaaSApplication3.fromJson(value! as Map<String, dynamic>)),
browserSshApplication3: parseAnyOfVariant<BrowserSshApplication3>(json, (value) => BrowserSshApplication3.fromJson(value! as Map<String, dynamic>)),
browserVncApplication3: parseAnyOfVariant<BrowserVncApplication3>(json, (value) => BrowserVncApplication3.fromJson(value! as Map<String, dynamic>)),
appLauncherApplication3: parseAnyOfVariant<AppLauncherApplication3>(json, (value) => AppLauncherApplication3.fromJson(value! as Map<String, dynamic>)),
deviceEnrollmentPermissionsApplication3: parseAnyOfVariant<DeviceEnrollmentPermissionsApplication3>(json, (value) => DeviceEnrollmentPermissionsApplication3.fromJson(value! as Map<String, dynamic>)),
browserIsolationPermissionsApplication3: parseAnyOfVariant<BrowserIsolationPermissionsApplication3>(json, (value) => BrowserIsolationPermissionsApplication3.fromJson(value! as Map<String, dynamic>)),
bookmarkApplication3: parseAnyOfVariant<BookmarkApplication3>(json, (value) => BookmarkApplication3.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<SelfHostedApplication3> selfHostedApplication3;
final Omittable<SaaSApplication3> saaSApplication3;
final Omittable<BrowserSshApplication3> browserSshApplication3;
final Omittable<BrowserVncApplication3> browserVncApplication3;
final Omittable<AppLauncherApplication3> appLauncherApplication3;
final Omittable<DeviceEnrollmentPermissionsApplication3> deviceEnrollmentPermissionsApplication3;
final Omittable<BrowserIsolationPermissionsApplication3> browserIsolationPermissionsApplication3;
final Omittable<BookmarkApplication3> bookmarkApplication3;

  /// Whether at least one known variant matched.
  bool get isValid => selfHostedApplication3.isPresent || saaSApplication3.isPresent || browserSshApplication3.isPresent || browserVncApplication3.isPresent || appLauncherApplication3.isPresent || deviceEnrollmentPermissionsApplication3.isPresent || browserIsolationPermissionsApplication3.isPresent || bookmarkApplication3.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (selfHostedApplication3.isPresent) selfHostedApplication3.value?.toJson(),
if (saaSApplication3.isPresent) saaSApplication3.value?.toJson(),
if (browserSshApplication3.isPresent) browserSshApplication3.value?.toJson(),
if (browserVncApplication3.isPresent) browserVncApplication3.value?.toJson(),
if (appLauncherApplication3.isPresent) appLauncherApplication3.value?.toJson(),
if (deviceEnrollmentPermissionsApplication3.isPresent) deviceEnrollmentPermissionsApplication3.value?.toJson(),
if (browserIsolationPermissionsApplication3.isPresent) browserIsolationPermissionsApplication3.value?.toJson(),
if (bookmarkApplication3.isPresent) bookmarkApplication3.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is AccessApps && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'AccessApps(${toJson()})';
}
