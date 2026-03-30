// GENERATED CODE - DO NOT MODIFY BY HAND

final class IntelPhishingUrlSubmitExcludedUrls {const IntelPhishingUrlSubmitExcludedUrls({this.url});

factory IntelPhishingUrlSubmitExcludedUrls.fromJson(Map<String, dynamic> json) { return IntelPhishingUrlSubmitExcludedUrls(
  url: json['url'] as String?,
); }

/// URL that was excluded.
final String? url;

Map<String, dynamic> toJson() { return {
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
IntelPhishingUrlSubmitExcludedUrls copyWith({String Function()? url}) { return IntelPhishingUrlSubmitExcludedUrls(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelPhishingUrlSubmitExcludedUrls &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'IntelPhishingUrlSubmitExcludedUrls(url: $url)'; } 
 }
