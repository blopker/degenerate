// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WafOverridesCreateAWafOverrideRequest {const WafOverridesCreateAWafOverrideRequest({required this.urls});

factory WafOverridesCreateAWafOverrideRequest.fromJson(Map<String, dynamic> json) { return WafOverridesCreateAWafOverrideRequest(
  urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The URLs to include in the current WAF override. You can use wildcards. Each entered URL will be escaped before use, which means you can only use simple wildcard patterns.
final List<String> urls;

Map<String, dynamic> toJson() { return {
  'urls': urls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('urls'); } 
WafOverridesCreateAWafOverrideRequest copyWith({List<String>? urls}) { return WafOverridesCreateAWafOverrideRequest(
  urls: urls ?? this.urls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WafOverridesCreateAWafOverrideRequest &&
          listEquals(urls, other.urls); } 
@override int get hashCode { return Object.hashAll(urls).hashCode; } 
@override String toString() { return 'WafOverridesCreateAWafOverrideRequest(urls: $urls)'; } 
 }
