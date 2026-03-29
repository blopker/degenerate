// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesUpdateLabelRequest {const IssuesUpdateLabelRequest({this.newName, this.color, this.description, });

factory IssuesUpdateLabelRequest.fromJson(Map<String, dynamic> json) { return IssuesUpdateLabelRequest(
  newName: json['new_name'] as String?,
  color: json['color'] as String?,
  description: json['description'] as String?,
); }

/// The new name of the label. Emoji can be added to label names, using either native emoji or colon-style markup. For example, typing `:strawberry:` will render the emoji ![:strawberry:](https://github.githubassets.com/images/icons/emoji/unicode/1f353.png ":strawberry:"). For a full list of available emoji and codes, see "[Emoji cheat sheet](https://github.com/ikatyang/emoji-cheat-sheet)."
final String? newName;

/// The [hexadecimal color code](http://www.color-hex.com/) for the label, without the leading `#`.
final String? color;

/// A short description of the label. Must be 100 characters or fewer.
final String? description;

Map<String, dynamic> toJson() { return {
  'new_name': ?newName,
  'color': ?color,
  'description': ?description,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'new_name', 'color', 'description'}.contains(key)); } 
IssuesUpdateLabelRequest copyWith({String Function()? newName, String Function()? color, String Function()? description, }) { return IssuesUpdateLabelRequest(
  newName: newName != null ? newName() : this.newName,
  color: color != null ? color() : this.color,
  description: description != null ? description() : this.description,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesUpdateLabelRequest &&
          newName == other.newName &&
          color == other.color &&
          description == other.description; } 
@override int get hashCode { return Object.hash(newName, color, description); } 
@override String toString() { return 'IssuesUpdateLabelRequest(newName: $newName, color: $color, description: $description)'; } 
 }
