// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Metaproperties for Git author/committer information.
@immutable final class WebhookPushPusher {const WebhookPushPusher({required this.name, this.date, this.email, this.username, });

factory WebhookPushPusher.fromJson(Map<String, dynamic> json) { return WebhookPushPusher(
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
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
WebhookPushPusher copyWith({DateTime Function()? date, String? Function()? email, String? name, String Function()? username, }) { return WebhookPushPusher(
  date: date != null ? date() : this.date,
  email: email != null ? email() : this.email,
  name: name ?? this.name,
  username: username != null ? username() : this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPushPusher &&
          date == other.date &&
          email == other.email &&
          name == other.name &&
          username == other.username; } 
@override int get hashCode { return Object.hash(date, email, name, username); } 
@override String toString() { return 'WebhookPushPusher(date: $date, email: $email, name: $name, username: $username)'; } 
 }
