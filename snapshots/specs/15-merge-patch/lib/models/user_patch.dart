// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';@immutable final class UserPatch {const UserPatch({required this.mode, this.displayName = const Omittable.absent(), this.tags = const Omittable.absent(), this.address = const Omittable.absent(), this.email, });

factory UserPatch.fromJson(Map<String, dynamic> json) { return UserPatch(
  displayName: json.containsKey('display_name') ? Omittable(json['display_name'] as String?) : const Omittable.absent(),
  tags: json.containsKey('tags') ? Omittable((json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  address: json.containsKey('address') ? Omittable(json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  email: json['email'] as String?,
  mode: json['mode'] as String?,
); }

final Omittable<String?> displayName;

final Omittable<List<String>?> tags;

final Omittable<Address?> address;

final String? email;

final String? mode;

Map<String, dynamic> toJson() { return {
  if (displayName.isPresent) 'display_name': displayName.value,
  if (tags.isPresent) 'tags': tags.value,
  if (address.isPresent) 'address': address.value?.toJson(),
  'email': ?email,
  'mode': mode,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode') && (json['mode'] == null || json['mode'] is String); } 
UserPatch copyWith({Omittable<String?>? displayName, Omittable<List<String>?>? tags, Omittable<Address?>? address, String? Function()? email, String? Function()? mode, }) { return UserPatch(
  displayName: displayName ?? this.displayName,
  tags: tags ?? this.tags,
  address: address ?? this.address,
  email: email != null ? email() : this.email,
  mode: mode != null ? mode() : this.mode,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UserPatch &&
          displayName == other.displayName &&
          tags.isPresent == other.tags.isPresent &&
          listEquals(tags.value, other.tags.value) &&
          address == other.address &&
          email == other.email &&
          mode == other.mode; } 
@override int get hashCode { return Object.hash(displayName, Object.hashAll(tags.value ?? const []), address, email, mode); } 
@override String toString() { return 'UserPatch(displayName: $displayName, tags: $tags, address: $address, email: $email, mode: $mode)'; } 
 }
