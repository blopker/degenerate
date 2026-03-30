// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostBillingAlertsIdArchiveRequest {const PostBillingAlertsIdArchiveRequest({this.expand});

factory PostBillingAlertsIdArchiveRequest.fromJson(Map<String, dynamic> json) { return PostBillingAlertsIdArchiveRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand'}.contains(key)); } 
PostBillingAlertsIdArchiveRequest copyWith({List<String> Function()? expand}) { return PostBillingAlertsIdArchiveRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostBillingAlertsIdArchiveRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostBillingAlertsIdArchiveRequest(expand: $expand)'; } 
 }
