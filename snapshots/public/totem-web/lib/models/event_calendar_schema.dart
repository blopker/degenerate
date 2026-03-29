// GENERATED CODE - DO NOT MODIFY BY HAND

final class EventCalendarSchema {const EventCalendarSchema({required this.title, required this.start, required this.slug, required this.url, });

factory EventCalendarSchema.fromJson(Map<String, dynamic> json) { return EventCalendarSchema(
  title: json['title'] as String,
  start: json['start'] as String,
  slug: json['slug'] as String,
  url: json['url'] as String,
); }

final String title;

final String start;

final String slug;

final String url;

Map<String, dynamic> toJson() { return {
  'title': title,
  'start': start,
  'slug': slug,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('title') && json['title'] is String &&
      json.containsKey('start') && json['start'] is String &&
      json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('url') && json['url'] is String; } 
EventCalendarSchema copyWith({String? title, String? start, String? slug, String? url, }) { return EventCalendarSchema(
  title: title ?? this.title,
  start: start ?? this.start,
  slug: slug ?? this.slug,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EventCalendarSchema &&
          title == other.title &&
          start == other.start &&
          slug == other.slug &&
          url == other.url; } 
@override int get hashCode { return Object.hash(title, start, slug, url); } 
@override String toString() { return 'EventCalendarSchema(title: $title, start: $start, slug: $slug, url: $url)'; } 
 }
