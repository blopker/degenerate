// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTestHelpersIssuingCardsCardShippingFailRequest {const PostTestHelpersIssuingCardsCardShippingFailRequest({this.expand});

factory PostTestHelpersIssuingCardsCardShippingFailRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingCardsCardShippingFailRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand'}.contains(key)); } 
PostTestHelpersIssuingCardsCardShippingFailRequest copyWith({List<String> Function()? expand}) { return PostTestHelpersIssuingCardsCardShippingFailRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingCardsCardShippingFailRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingCardsCardShippingFailRequest(expand: $expand)'; } 
 }
