// GENERATED CODE - DO NOT MODIFY BY HAND

final class Doc {const Doc({this.id, this.title, });

factory Doc.fromJson(Map<String, dynamic> json) { return Doc(
  id: json['id'] as String?,
  title: json['title'] as String?,
); }

final String? id;

final String? title;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Doc copyWith({String Function()? id, String Function()? title, }) { return Doc(
  id: id != null ? id() : this.id,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Doc &&
          id == other.id &&
          title == other.title; } 
@override int get hashCode { return Object.hash(id, title); } 
@override String toString() { return 'Doc(id: $id, title: $title)'; } 
 }
