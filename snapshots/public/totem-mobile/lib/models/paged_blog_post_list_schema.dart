// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'blog_post_list_schema.dart';

@immutable
final class PagedBlogPostListSchema {
  const PagedBlogPostListSchema({required this.items, required this.count});

  factory PagedBlogPostListSchema.fromJson(Map<String, dynamic> json) {
    return PagedBlogPostListSchema(
      items: (json['items'] as List<dynamic>)
          .map((e) => BlogPostListSchema.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num).toInt(),
    );
  }

  final List<BlogPostListSchema> items;

  final int count;

  Map<String, dynamic> toJson() {
    return {'items': items.map((e) => e.toJson()).toList(), 'count': count};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('items') &&
        json.containsKey('count') &&
        json['count'] is num;
  }

  PagedBlogPostListSchema copyWith({
    List<BlogPostListSchema>? items,
    int? count,
  }) {
    return PagedBlogPostListSchema(
      items: items ?? this.items,
      count: count ?? this.count,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is PagedBlogPostListSchema &&
            listEquals(items, other.items) &&
            count == other.count;
  }

  @override
  int get hashCode {
    return Object.hash(Object.hashAll(items), count);
  }

  @override
  String toString() {
    return 'PagedBlogPostListSchema(items: $items, count: $count)';
  }
}
