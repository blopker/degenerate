// GENERATED CODE - DO NOT MODIFY BY HAND

final class TimelineReviewedEventLinksHtml {const TimelineReviewedEventLinksHtml({required this.href});

factory TimelineReviewedEventLinksHtml.fromJson(Map<String, dynamic> json) { return TimelineReviewedEventLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
TimelineReviewedEventLinksHtml copyWith({String? href}) { return TimelineReviewedEventLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TimelineReviewedEventLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'TimelineReviewedEventLinksHtml(href: $href)'; } 
 }
