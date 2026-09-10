// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class CustomLogo {const CustomLogo({required this.url, this.contentType = const Omittable.absent(), });

factory CustomLogo.fromJson(Map<String, dynamic> json) { return CustomLogo(
  contentType: json.containsKey('content_type') ? Omittable(json['content_type'] as String?) : const Omittable.absent(),
  url: json['url'] as String,
); }

/// Content type of the Dashboard-only CustomPaymentMethodType logo.
final Omittable<String?> contentType;

/// URL of the Dashboard-only CustomPaymentMethodType logo.
final String url;

Map<String, dynamic> toJson() { return {
  if (contentType.isPresent) 'content_type': contentType.value,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
CustomLogo copyWith({Omittable<String?>? contentType, String? url, }) { return CustomLogo(
  contentType: contentType ?? this.contentType,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CustomLogo &&
          contentType == other.contentType &&
          url == other.url; } 
@override int get hashCode { return Object.hash(contentType, url); } 
@override String toString() { return 'CustomLogo(contentType: $contentType, url: $url)'; } 
 }
