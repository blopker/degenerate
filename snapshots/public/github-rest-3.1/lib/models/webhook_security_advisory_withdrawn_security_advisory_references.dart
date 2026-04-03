// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences {const WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences({required this.url});

factory WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences.fromJson(Map<String, dynamic> json) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences(
  url: Uri.parse(json['url'] as String),
); }

final Uri url;

Map<String, dynamic> toJson() { return {
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences copyWith({Uri? url}) { return WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences(
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'WebhookSecurityAdvisoryWithdrawnSecurityAdvisoryReferences(url: $url)'; } 
 }
