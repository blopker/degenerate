// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Metaproperties for Git author/committer information.
@immutable final class WebhookPushCommitsCommitter {const WebhookPushCommitsCommitter({required this.email, required this.name, this.date, this.username, });

factory WebhookPushCommitsCommitter.fromJson(Map<String, dynamic> json) { return WebhookPushCommitsCommitter(
  date: json['date'] != null ? DateTime.parse(json['date'] as String) : null,
  email: json['email'] as String?,
  name: json['name'] as String,
  username: json['username'] as String?,
); }

final DateTime? date;

final String? email;

/// The git author's name.
final String name;

final String? username;

Map<String, dynamic> toJson() { return {
  if (date != null) 'date': date?.toIso8601String(),
  'email': ?email,
  'name': name,
  'username': ?username,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('email') && json['email'] is String &&
      json.containsKey('name') && json['name'] is String; } 
WebhookPushCommitsCommitter copyWith({DateTime Function()? date, String? Function()? email, String? name, String Function()? username, }) { return WebhookPushCommitsCommitter(
  date: date != null ? date() : this.date,
  email: email != null ? email() : this.email,
  name: name ?? this.name,
  username: username != null ? username() : this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPushCommitsCommitter &&
          date == other.date &&
          email == other.email &&
          name == other.name &&
          username == other.username; } 
@override int get hashCode { return Object.hash(date, email, name, username); } 
@override String toString() { return 'WebhookPushCommitsCommitter(date: $date, email: $email, name: $name, username: $username)'; } 
 }
