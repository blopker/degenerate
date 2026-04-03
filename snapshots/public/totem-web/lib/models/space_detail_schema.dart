// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'next_session_schema.dart';import 'public_user_schema.dart';@immutable final class SpaceDetailSchema {const SpaceDetailSchema({required this.slug, required this.title, required this.imageLink, required this.shortDescription, required this.content, required this.author, required this.nextEvent, required this.category, required this.subscribers, required this.recurring, required this.price, });

factory SpaceDetailSchema.fromJson(Map<String, dynamic> json) { return SpaceDetailSchema(
  slug: json['slug'] as String,
  title: json['title'] as String,
  imageLink: json['image_link'] as String?,
  shortDescription: json['short_description'] as String,
  content: json['content'] as String,
  author: PublicUserSchema.fromJson(json['author'] as Map<String, dynamic>),
  nextEvent: json['next_event'] != null ? NextSessionSchema.fromJson(json['next_event'] as Map<String, dynamic>) : null,
  category: json['category'] as String?,
  subscribers: (json['subscribers'] as num).toInt(),
  recurring: json['recurring'] as String?,
  price: (json['price'] as num).toInt(),
); }

final String slug;

final String title;

final String? imageLink;

final String shortDescription;

final String content;

final PublicUserSchema author;

final NextSessionSchema? nextEvent;

final String? category;

final int subscribers;

final String? recurring;

final int price;

Map<String, dynamic> toJson() { return {
  'slug': slug,
  'title': title,
  'image_link': ?imageLink,
  'short_description': shortDescription,
  'content': content,
  'author': author.toJson(),
  if (nextEvent != null) 'next_event': nextEvent?.toJson(),
  'category': ?category,
  'subscribers': subscribers,
  'recurring': ?recurring,
  'price': price,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('slug') && json['slug'] is String &&
      json.containsKey('title') && json['title'] is String &&
      json.containsKey('image_link') && json['image_link'] is String &&
      json.containsKey('short_description') && json['short_description'] is String &&
      json.containsKey('content') && json['content'] is String &&
      json.containsKey('author') &&
      json.containsKey('next_event') &&
      json.containsKey('category') && json['category'] is String &&
      json.containsKey('subscribers') && json['subscribers'] is num &&
      json.containsKey('recurring') && json['recurring'] is String &&
      json.containsKey('price') && json['price'] is num; } 
SpaceDetailSchema copyWith({String? slug, String? title, String? Function()? imageLink, String? shortDescription, String? content, PublicUserSchema? author, NextSessionSchema? Function()? nextEvent, String? Function()? category, int? subscribers, String? Function()? recurring, int? price, }) { return SpaceDetailSchema(
  slug: slug ?? this.slug,
  title: title ?? this.title,
  imageLink: imageLink != null ? imageLink() : this.imageLink,
  shortDescription: shortDescription ?? this.shortDescription,
  content: content ?? this.content,
  author: author ?? this.author,
  nextEvent: nextEvent != null ? nextEvent() : this.nextEvent,
  category: category != null ? category() : this.category,
  subscribers: subscribers ?? this.subscribers,
  recurring: recurring != null ? recurring() : this.recurring,
  price: price ?? this.price,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SpaceDetailSchema &&
          slug == other.slug &&
          title == other.title &&
          imageLink == other.imageLink &&
          shortDescription == other.shortDescription &&
          content == other.content &&
          author == other.author &&
          nextEvent == other.nextEvent &&
          category == other.category &&
          subscribers == other.subscribers &&
          recurring == other.recurring &&
          price == other.price; } 
@override int get hashCode { return Object.hash(slug, title, imageLink, shortDescription, content, author, nextEvent, category, subscribers, recurring, price); } 
@override String toString() { return 'SpaceDetailSchema(slug: $slug, title: $title, imageLink: $imageLink, shortDescription: $shortDescription, content: $content, author: $author, nextEvent: $nextEvent, category: $category, subscribers: $subscribers, recurring: $recurring, price: $price)'; } 
 }
