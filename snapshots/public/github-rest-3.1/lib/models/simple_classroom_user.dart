// GENERATED CODE - DO NOT MODIFY BY HAND

/// A GitHub user simplified for Classroom.
final class SimpleClassroomUser {const SimpleClassroomUser({required this.id, required this.login, required this.avatarUrl, required this.htmlUrl, });

factory SimpleClassroomUser.fromJson(Map<String, dynamic> json) { return SimpleClassroomUser(
  id: (json['id'] as num).toInt(),
  login: json['login'] as String,
  avatarUrl: Uri.parse(json['avatar_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
); }

final int id;

final String login;

final Uri avatarUrl;

final Uri htmlUrl;

Map<String, dynamic> toJson() { return {
  'id': id,
  'login': login,
  'avatar_url': avatarUrl.toString(),
  'html_url': htmlUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is num &&
      json.containsKey('login') && json['login'] is String &&
      json.containsKey('avatar_url') && json['avatar_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String; } 
SimpleClassroomUser copyWith({int? id, String? login, Uri? avatarUrl, Uri? htmlUrl, }) { return SimpleClassroomUser(
  id: id ?? this.id,
  login: login ?? this.login,
  avatarUrl: avatarUrl ?? this.avatarUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SimpleClassroomUser &&
          id == other.id &&
          login == other.login &&
          avatarUrl == other.avatarUrl &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(id, login, avatarUrl, htmlUrl); } 
@override String toString() { return 'SimpleClassroomUser(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)'; } 
 }
