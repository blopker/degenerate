// GENERATED CODE - DO NOT MODIFY BY HAND

import 'linux_container_user.dart';/// ContainerUser represents user identity information
final class ContainerUser {const ContainerUser({this.linux});

factory ContainerUser.fromJson(Map<String, dynamic> json) { return ContainerUser(
  linux: json['linux'] != null ? LinuxContainerUser.fromJson(json['linux'] as Map<String, dynamic>) : null,
); }

/// Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
final LinuxContainerUser? linux;

Map<String, dynamic> toJson() { return {
  if (linux != null) 'linux': linux?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ContainerUser copyWith({LinuxContainerUser Function()? linux}) { return ContainerUser(
  linux: linux != null ? linux() : this.linux,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ContainerUser &&
          linux == other.linux; } 
@override int get hashCode { return linux.hashCode; } 
@override String toString() { return 'ContainerUser(linux: $linux)'; } 
 }
