// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ReposSetAppAccessRestrictionsRequest {const ReposSetAppAccessRestrictionsRequest({required this.apps});

factory ReposSetAppAccessRestrictionsRequest.fromJson(Map<String, dynamic> json) { return ReposSetAppAccessRestrictionsRequest(
  apps: (json['apps'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// The GitHub Apps that have push access to this branch. Use the slugified version of the app name. **Note**: The list of users, apps, and teams in total is limited to 100 items.
final List<String> apps;

Map<String, dynamic> toJson() { return {
  'apps': apps,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('apps'); } 
ReposSetAppAccessRestrictionsRequest copyWith({List<String>? apps}) { return ReposSetAppAccessRestrictionsRequest(
  apps: apps ?? this.apps,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposSetAppAccessRestrictionsRequest &&
          listEquals(apps, other.apps); } 
@override int get hashCode { return Object.hashAll(apps).hashCode; } 
@override String toString() { return 'ReposSetAppAccessRestrictionsRequest(apps: $apps)'; } 
 }
