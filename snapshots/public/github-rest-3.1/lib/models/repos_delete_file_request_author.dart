// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// object containing information about the author.
@immutable final class ReposDeleteFileRequestAuthor {const ReposDeleteFileRequestAuthor({this.name, this.email, });

factory ReposDeleteFileRequestAuthor.fromJson(Map<String, dynamic> json) { return ReposDeleteFileRequestAuthor(
  name: json['name'] as String?,
  email: json['email'] as String?,
); }

/// The name of the author (or committer) of the commit
final String? name;

/// The email of the author (or committer) of the commit
final String? email;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'email': ?email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'email'}.contains(key)); } 
ReposDeleteFileRequestAuthor copyWith({String Function()? name, String Function()? email, }) { return ReposDeleteFileRequestAuthor(
  name: name != null ? name() : this.name,
  email: email != null ? email() : this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReposDeleteFileRequestAuthor &&
          name == other.name &&
          email == other.email; } 
@override int get hashCode { return Object.hash(name, email); } 
@override String toString() { return 'ReposDeleteFileRequestAuthor(name: $name, email: $email)'; } 
 }
