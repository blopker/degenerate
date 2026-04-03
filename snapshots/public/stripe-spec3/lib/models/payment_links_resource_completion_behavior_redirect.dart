// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceCompletionBehaviorRedirect {const PaymentLinksResourceCompletionBehaviorRedirect({required this.url});

factory PaymentLinksResourceCompletionBehaviorRedirect.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCompletionBehaviorRedirect(
  url: json['url'] as String,
); }

/// The URL the customer will be redirected to after the purchase is complete.
final String url;

Map<String, dynamic> toJson() { return {
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
PaymentLinksResourceCompletionBehaviorRedirect copyWith({String? url}) { return PaymentLinksResourceCompletionBehaviorRedirect(
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCompletionBehaviorRedirect &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'PaymentLinksResourceCompletionBehaviorRedirect(url: $url)'; } 
 }
