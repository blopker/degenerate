// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class MandateAuBecsDebit {const MandateAuBecsDebit({required this.url});

factory MandateAuBecsDebit.fromJson(Map<String, dynamic> json) { return MandateAuBecsDebit(
  url: json['url'] as String,
); }

/// The URL of the mandate. This URL generally contains sensitive information about the customer and should be shared with them exclusively.
final String url;

Map<String, dynamic> toJson() { return {
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
MandateAuBecsDebit copyWith({String? url}) { return MandateAuBecsDebit(
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MandateAuBecsDebit &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'MandateAuBecsDebit(url: $url)'; } 
 }
