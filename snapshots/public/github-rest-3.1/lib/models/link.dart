// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Hypermedia Link
@immutable final class Link {const Link({required this.href});

factory Link.fromJson(Map<String, dynamic> json) { return Link(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
Link copyWith({String? href}) { return Link(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Link &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'Link(href: $href)'; } 
 }
