// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityLink {const EmailSecurityLink({required this.href, this.text = const Omittable.absent(), });

factory EmailSecurityLink.fromJson(Map<String, dynamic> json) { return EmailSecurityLink(
  href: json['href'] as String,
  text: json.containsKey('text') ? Omittable(json['text'] as String?) : const Omittable.absent(),
); }

final String href;

final Omittable<String?> text;

Map<String, dynamic> toJson() { return {
  'href': href,
  if (text.isPresent) 'text': text.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
EmailSecurityLink copyWith({String? href, Omittable<String?>? text, }) { return EmailSecurityLink(
  href: href ?? this.href,
  text: text ?? this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityLink &&
          href == other.href &&
          text == other.text; } 
@override int get hashCode { return Object.hash(href, text); } 
@override String toString() { return 'EmailSecurityLink(href: $href, text: $text)'; } 
 }
