// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FileCommitCommitAuthor {const FileCommitCommitAuthor({this.date, this.name, this.email, });

factory FileCommitCommitAuthor.fromJson(Map<String, dynamic> json) { return FileCommitCommitAuthor(
  date: json['date'] as String?,
  name: json['name'] as String?,
  email: json['email'] as String?,
); }

final String? date;

final String? name;

final String? email;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'name': ?name,
  'email': ?email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'name', 'email'}.contains(key)); } 
FileCommitCommitAuthor copyWith({String Function()? date, String Function()? name, String Function()? email, }) { return FileCommitCommitAuthor(
  date: date != null ? date() : this.date,
  name: name != null ? name() : this.name,
  email: email != null ? email() : this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileCommitCommitAuthor &&
          date == other.date &&
          name == other.name &&
          email == other.email; } 
@override int get hashCode { return Object.hash(date, name, email); } 
@override String toString() { return 'FileCommitCommitAuthor(date: $date, name: $name, email: $email)'; } 
 }
