// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'address.dart';@immutable final class User {const User({required this.id, this.displayName = const Omittable.absent(), this.tags = const Omittable.absent(), this.address = const Omittable.absent(), this.email, });

factory User.fromJson(Map<String, dynamic> json) { return User(
  id: json['id'] as String,
  displayName: json.containsKey('display_name') ? Omittable(json['display_name'] as String?) : const Omittable.absent(),
  tags: json.containsKey('tags') ? Omittable((json['tags'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  address: json.containsKey('address') ? Omittable(json['address'] != null ? Address.fromJson(json['address'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  email: json['email'] as String?,
); }

final String id;

final Omittable<String?> displayName;

final Omittable<List<String>?> tags;

final Omittable<Address?> address;

final String? email;

Map<String, dynamic> toJson() { return {
  'id': id,
  if (displayName.isPresent) 'display_name': displayName.value,
  if (tags.isPresent) 'tags': tags.value,
  if (address.isPresent) 'address': address.value?.toJson(),
  'email': ?email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String; } 
User copyWith({String? id, Omittable<String?>? displayName, Omittable<List<String>?>? tags, Omittable<Address?>? address, String? Function()? email, }) { return User(
  id: id ?? this.id,
  displayName: displayName ?? this.displayName,
  tags: tags ?? this.tags,
  address: address ?? this.address,
  email: email != null ? email() : this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is User &&
          id == other.id &&
          displayName == other.displayName &&
          tags.isPresent == other.tags.isPresent &&
          listEquals(tags.value, other.tags.value) &&
          address == other.address &&
          email == other.email; } 
@override int get hashCode { return Object.hash(id, displayName, Object.hashAll(tags.value ?? const []), address, email); } 
@override String toString() { return 'User(id: $id, displayName: $displayName, tags: $tags, address: $address, email: $email)'; } 
 }
