// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersCreateSshSigningKeyForAuthenticatedUserRequest {const UsersCreateSshSigningKeyForAuthenticatedUserRequest({required this.key, this.title, });

factory UsersCreateSshSigningKeyForAuthenticatedUserRequest.fromJson(Map<String, dynamic> json) { return UsersCreateSshSigningKeyForAuthenticatedUserRequest(
  title: json['title'] as String?,
  key: json['key'] as String,
); }

/// A descriptive name for the new key.
final String? title;

/// The public SSH key to add to your GitHub account. For more information, see "[Checking for existing SSH keys](https://docs.github.com/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys)."
final String key;

Map<String, dynamic> toJson() { return {
  'title': ?title,
  'key': key,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String; } 
UsersCreateSshSigningKeyForAuthenticatedUserRequest copyWith({String Function()? title, String? key, }) { return UsersCreateSshSigningKeyForAuthenticatedUserRequest(
  title: title != null ? title() : this.title,
  key: key ?? this.key,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersCreateSshSigningKeyForAuthenticatedUserRequest &&
          title == other.title &&
          key == other.key; } 
@override int get hashCode { return Object.hash(title, key); } 
@override String toString() { return 'UsersCreateSshSigningKeyForAuthenticatedUserRequest(title: $title, key: $key)'; } 
 }
