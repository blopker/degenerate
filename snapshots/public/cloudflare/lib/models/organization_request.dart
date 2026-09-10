// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'organization_request_parent.dart';import 'profile.dart';/// References an Organization in the Cloudflare data model.
@immutable final class OrganizationRequest {const OrganizationRequest({required this.name, this.parent, this.profile, });

factory OrganizationRequest.fromJson(Map<String, dynamic> json) { return OrganizationRequest(
  name: json['name'] as String,
  parent: json['parent'] != null ? OrganizationRequestParent.fromJson(json['parent'] as Map<String, dynamic>) : null,
  profile: json['profile'] != null ? Profile.fromJson(json['profile'] as Map<String, dynamic>) : null,
); }

final String name;

final OrganizationRequestParent? parent;

final Profile? profile;

Map<String, dynamic> toJson() { return {
  'name': name,
  if (parent != null) 'parent': parent?.toJson(),
  if (profile != null) 'profile': profile?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
OrganizationRequest copyWith({String? name, OrganizationRequestParent? Function()? parent, Profile? Function()? profile, }) { return OrganizationRequest(
  name: name ?? this.name,
  parent: parent != null ? parent() : this.parent,
  profile: profile != null ? profile() : this.profile,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is OrganizationRequest &&
          name == other.name &&
          parent == other.parent &&
          profile == other.profile; } 
@override int get hashCode { return Object.hash(name, parent, profile); } 
@override String toString() { return 'OrganizationRequest(name: $name, parent: $parent, profile: $profile)'; } 
 }
