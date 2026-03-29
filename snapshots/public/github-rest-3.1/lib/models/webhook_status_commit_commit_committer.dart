// GENERATED CODE - DO NOT MODIFY BY HAND

/// Metaproperties for Git author/committer information.
final class WebhookStatusCommitCommitCommitter {const WebhookStatusCommitCommitCommitter({required this.date, required this.email, required this.name, this.username, });

factory WebhookStatusCommitCommitCommitter.fromJson(Map<String, dynamic> json) { return WebhookStatusCommitCommitCommitter(
  date: json['date'] as String,
  email: json['email'] as String,
  name: json['name'] as String,
  username: json['username'] as String?,
); }

final String date;

final String email;

final String name;

final String? username;

Map<String, dynamic> toJson() { return {
  'date': date,
  'email': email,
  'name': name,
  'username': ?username,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('date') && json['date'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('name') && json['name'] is String; } 
WebhookStatusCommitCommitCommitter copyWith({String? date, String? email, String? name, String Function()? username, }) { return WebhookStatusCommitCommitCommitter(
  date: date ?? this.date,
  email: email ?? this.email,
  name: name ?? this.name,
  username: username != null ? username() : this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookStatusCommitCommitCommitter &&
          date == other.date &&
          email == other.email &&
          name == other.name &&
          username == other.username; } 
@override int get hashCode { return Object.hash(date, email, name, username); } 
@override String toString() { return 'WebhookStatusCommitCommitCommitter(date: $date, email: $email, name: $name, username: $username)'; } 
 }
