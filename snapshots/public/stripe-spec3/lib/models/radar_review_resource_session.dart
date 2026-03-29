// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class RadarReviewResourceSession {const RadarReviewResourceSession({this.browser, this.device, this.platform, this.version, });

factory RadarReviewResourceSession.fromJson(Map<String, dynamic> json) { return RadarReviewResourceSession(
  browser: json['browser'] as String?,
  device: json['device'] as String?,
  platform: json['platform'] as String?,
  version: json['version'] as String?,
); }

/// The browser used in this browser session (e.g., `Chrome`).
final String? browser;

/// Information about the device used for the browser session (e.g., `Samsung SM-G930T`).
final String? device;

/// The platform for the browser session (e.g., `Macintosh`).
final String? platform;

/// The version for the browser session (e.g., `61.0.3163.100`).
final String? version;

Map<String, dynamic> toJson() { return {
  'browser': ?browser,
  'device': ?device,
  'platform': ?platform,
  'version': ?version,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RadarReviewResourceSession copyWith({String? Function()? browser, String? Function()? device, String? Function()? platform, String? Function()? version, }) { return RadarReviewResourceSession(
  browser: browser != null ? browser() : this.browser,
  device: device != null ? device() : this.device,
  platform: platform != null ? platform() : this.platform,
  version: version != null ? version() : this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarReviewResourceSession &&
          browser == other.browser &&
          device == other.device &&
          platform == other.platform &&
          version == other.version; } 
@override int get hashCode { return Object.hash(browser, device, platform, version); } 
@override String toString() { return 'RadarReviewResourceSession(browser: $browser, device: $device, platform: $platform, version: $version)'; } 
 }
