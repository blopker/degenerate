// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ProtectedBranchEnforceAdmins {const ProtectedBranchEnforceAdmins({required this.url, required this.enabled, });

factory ProtectedBranchEnforceAdmins.fromJson(Map<String, dynamic> json) { return ProtectedBranchEnforceAdmins(
  url: Uri.parse(json['url'] as String),
  enabled: json['enabled'] as bool,
); }

final Uri url;

final bool enabled;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
  'enabled': enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool; } 
ProtectedBranchEnforceAdmins copyWith({Uri? url, bool? enabled, }) { return ProtectedBranchEnforceAdmins(
  url: url ?? this.url,
  enabled: enabled ?? this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ProtectedBranchEnforceAdmins &&
          url == other.url &&
          enabled == other.enabled; } 
@override int get hashCode { return Object.hash(url, enabled); } 
@override String toString() { return 'ProtectedBranchEnforceAdmins(url: $url, enabled: $enabled)'; } 
 }
