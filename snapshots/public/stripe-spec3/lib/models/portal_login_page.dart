// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PortalLoginPage {const PortalLoginPage({required this.enabled, this.url = const Omittable.absent(), });

factory PortalLoginPage.fromJson(Map<String, dynamic> json) { return PortalLoginPage(
  enabled: json['enabled'] as bool,
  url: json.containsKey('url') ? Omittable(json['url'] as String?) : const Omittable.absent(),
); }

/// If `true`, a shareable `url` will be generated that will take your customers to a hosted login page for the customer portal.
/// 
/// If `false`, the previously generated `url`, if any, will be deactivated.
final bool enabled;

/// A shareable URL to the hosted portal login page. Your customers will be able to log in with their [email](https://docs.stripe.com/api/customers/object#customer_object-email) and receive a link to their customer portal.
final Omittable<String?> url;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (url.isPresent) 'url': url.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
PortalLoginPage copyWith({bool? enabled, Omittable<String?>? url, }) { return PortalLoginPage(
  enabled: enabled ?? this.enabled,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PortalLoginPage &&
          enabled == other.enabled &&
          url == other.url; } 
@override int get hashCode { return Object.hash(enabled, url); } 
@override String toString() { return 'PortalLoginPage(enabled: $enabled, url: $url)'; } 
 }
