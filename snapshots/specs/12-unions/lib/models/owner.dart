// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Owner {const Owner({required this.name, this.email, });

factory Owner.fromJson(Map<String, dynamic> json) { return Owner(
  name: json['name'] as String,
  email: json['email'] as String?,
); }

final String name;

final String? email;

Map<String, dynamic> toJson() { return {
  'name': name,
  'email': ?email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
Owner copyWith({String? name, String Function()? email, }) { return Owner(
  name: name ?? this.name,
  email: email != null ? email() : this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Owner &&
          name == other.name &&
          email == other.email; } 
@override int get hashCode { return Object.hash(name, email); } 
@override String toString() { return 'Owner(name: $name, email: $email)'; } 
 }
