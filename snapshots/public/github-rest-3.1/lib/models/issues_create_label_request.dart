// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesCreateLabelRequest {const IssuesCreateLabelRequest({required this.name, this.color, this.description, });

factory IssuesCreateLabelRequest.fromJson(Map<String, dynamic> json) { return IssuesCreateLabelRequest(
  name: json['name'] as String,
  color: json['color'] as String?,
  description: json['description'] as String?,
); }

/// The name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png ":strawberry:"). For a full list of available emoji and codes, see "[Emoji cheat sheet](https://github.com/ikatyang/emoji-cheat-sheet)."
final String name;

/// The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`.
final String? color;

/// A short description of the label. Must be 100 characters or fewer.
final String? description;

Map<String, dynamic> toJson() { return {
  'name': name,
  'color': ?color,
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String; } 
IssuesCreateLabelRequest copyWith({String? name, String Function()? color, String Function()? description, }) { return IssuesCreateLabelRequest(
  name: name ?? this.name,
  color: color != null ? color() : this.color,
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesCreateLabelRequest &&
          name == other.name &&
          color == other.color &&
          description == other.description; } 
@override int get hashCode { return Object.hash(name, color, description); } 
@override String toString() { return 'IssuesCreateLabelRequest(name: $name, color: $color, description: $description)'; } 
 }
