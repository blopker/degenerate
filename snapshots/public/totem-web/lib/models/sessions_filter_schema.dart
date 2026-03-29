// GENERATED CODE - DO NOT MODIFY BY HAND

final class SessionsFilterSchema {const SessionsFilterSchema({required this.category, required this.author, });

factory SessionsFilterSchema.fromJson(Map<String, dynamic> json) { return SessionsFilterSchema(
  category: json['category'] as String?,
  author: json['author'] as String?,
); }

final String? category;

final String? author;

Map<String, dynamic> toJson() { return {
  'category': ?category,
  'author': ?author,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('category') && json['category'] is String &&
      json.containsKey('author') && json['author'] is String; } 
SessionsFilterSchema copyWith({String? Function()? category, String? Function()? author, }) { return SessionsFilterSchema(
  category: category != null ? category() : this.category,
  author: author != null ? author() : this.author,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SessionsFilterSchema &&
          category == other.category &&
          author == other.author; } 
@override int get hashCode { return Object.hash(category, author); } 
@override String toString() { return 'SessionsFilterSchema(category: $category, author: $author)'; } 
 }
