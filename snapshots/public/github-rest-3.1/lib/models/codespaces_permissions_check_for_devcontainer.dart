// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Permission check result for a given devcontainer config.
@immutable final class CodespacesPermissionsCheckForDevcontainer {const CodespacesPermissionsCheckForDevcontainer({required this.accepted});

factory CodespacesPermissionsCheckForDevcontainer.fromJson(Map<String, dynamic> json) { return CodespacesPermissionsCheckForDevcontainer(
  accepted: json['accepted'] as bool,
); }

/// Whether the user has accepted the permissions defined by the devcontainer config
final bool accepted;

Map<String, dynamic> toJson() { return {
  'accepted': accepted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('accepted') && json['accepted'] is bool; } 
CodespacesPermissionsCheckForDevcontainer copyWith({bool? accepted}) { return CodespacesPermissionsCheckForDevcontainer(
  accepted: accepted ?? this.accepted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespacesPermissionsCheckForDevcontainer &&
          accepted == other.accepted; } 
@override int get hashCode { return accepted.hashCode; } 
@override String toString() { return 'CodespacesPermissionsCheckForDevcontainer(accepted: $accepted)'; } 
 }
