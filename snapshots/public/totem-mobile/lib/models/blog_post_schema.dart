// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

import 'public_user_schema.dart';

@immutable
final class BlogPostSchema {
  const BlogPostSchema({
    required this.title,
    this.author = const Omittable.absent(),
    this.headerImageUrl = const Omittable.absent(),
    this.contentHtml = const Omittable.absent(),
    this.subtitle = const Omittable.absent(),
    this.datePublished,
    this.slug = const Omittable.absent(),
    this.publish = false,
    this.readTime = 1,
    this.summary = const Omittable.absent(),
  });

  factory BlogPostSchema.fromJson(Map<String, dynamic> json) {
    return BlogPostSchema(
      author: json.containsKey('author')
          ? Omittable(
              json['author'] != null
                  ? PublicUserSchema.fromJson(
                      json['author'] as Map<String, dynamic>,
                    )
                  : null,
            )
          : const Omittable.absent(),
      headerImageUrl: json.containsKey('header_image_url')
          ? Omittable(json['header_image_url'] as String?)
          : const Omittable.absent(),
      contentHtml: json.containsKey('content_html')
          ? Omittable(json['content_html'] as String?)
          : const Omittable.absent(),
      title: json['title'] as String,
      subtitle: json.containsKey('subtitle')
          ? Omittable(json['subtitle'] as String?)
          : const Omittable.absent(),
      datePublished: json['date_published'] != null
          ? DateTime.parse(json['date_published'] as String)
          : null,
      slug: json.containsKey('slug')
          ? Omittable(json['slug'] as String?)
          : const Omittable.absent(),
      publish: json.containsKey('publish') ? json['publish'] as bool : false,
      readTime: json.containsKey('read_time')
          ? (json['read_time'] as num).toInt()
          : 1,
      summary: json.containsKey('summary')
          ? Omittable(json['summary'] as String?)
          : const Omittable.absent(),
    );
  }

  final Omittable<PublicUserSchema?> author;

  final Omittable<String?> headerImageUrl;

  final Omittable<String?> contentHtml;

  final String title;

  final Omittable<String?> subtitle;

  final DateTime? datePublished;

  final Omittable<String?> slug;

  final bool publish;

  /// Estimated reading time in minutes (auto-calculated)
  final int readTime;

  /// Short summary of the blog post to show in list pages. No Markdown allowed. Max 2000 characters.
  final Omittable<String?> summary;

  Map<String, dynamic> toJson() {
    return {
      if (author.isPresent) 'author': author.value?.toJson(),
      if (headerImageUrl.isPresent) 'header_image_url': headerImageUrl.value,
      if (contentHtml.isPresent) 'content_html': contentHtml.value,
      'title': title,
      if (subtitle.isPresent) 'subtitle': subtitle.value,
      if (datePublished != null)
        'date_published': datePublished?.toIso8601String(),
      if (slug.isPresent) 'slug': slug.value,
      'publish': publish,
      'read_time': readTime,
      if (summary.isPresent) 'summary': summary.value,
    };
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('title') && json['title'] is String;
  }

  BlogPostSchema copyWith({
    Omittable<PublicUserSchema?>? author,
    Omittable<String?>? headerImageUrl,
    Omittable<String?>? contentHtml,
    String? title,
    Omittable<String?>? subtitle,
    DateTime? Function()? datePublished,
    Omittable<String?>? slug,
    bool Function()? publish,
    int Function()? readTime,
    Omittable<String?>? summary,
  }) {
    return BlogPostSchema(
      author: author ?? this.author,
      headerImageUrl: headerImageUrl ?? this.headerImageUrl,
      contentHtml: contentHtml ?? this.contentHtml,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      datePublished: datePublished != null
          ? datePublished()
          : this.datePublished,
      slug: slug ?? this.slug,
      publish: publish != null ? publish() : this.publish,
      readTime: readTime != null ? readTime() : this.readTime,
      summary: summary ?? this.summary,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is BlogPostSchema &&
            author == other.author &&
            headerImageUrl == other.headerImageUrl &&
            contentHtml == other.contentHtml &&
            title == other.title &&
            subtitle == other.subtitle &&
            datePublished == other.datePublished &&
            slug == other.slug &&
            publish == other.publish &&
            readTime == other.readTime &&
            summary == other.summary;
  }

  @override
  int get hashCode {
    return Object.hash(
      author,
      headerImageUrl,
      contentHtml,
      title,
      subtitle,
      datePublished,
      slug,
      publish,
      readTime,
      summary,
    );
  }

  @override
  String toString() {
    return 'BlogPostSchema(author: $author, headerImageUrl: $headerImageUrl, contentHtml: $contentHtml, title: $title, subtitle: $subtitle, datePublished: $datePublished, slug: $slug, publish: $publish, readTime: $readTime, summary: $summary)';
  }
}
