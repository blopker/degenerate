// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostDisputesDisputeCloseRequest {const PostDisputesDisputeCloseRequest({this.expand});

factory PostDisputesDisputeCloseRequest.fromJson(Map<String, dynamic> json) { return PostDisputesDisputeCloseRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand'}.contains(key)); } 
PostDisputesDisputeCloseRequest copyWith({List<String> Function()? expand}) { return PostDisputesDisputeCloseRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostDisputesDisputeCloseRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostDisputesDisputeCloseRequest(expand: $expand)'; } 
 }
