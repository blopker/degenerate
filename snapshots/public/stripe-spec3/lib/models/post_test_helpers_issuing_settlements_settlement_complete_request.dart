// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTestHelpersIssuingSettlementsSettlementCompleteRequest {const PostTestHelpersIssuingSettlementsSettlementCompleteRequest({this.expand});

factory PostTestHelpersIssuingSettlementsSettlementCompleteRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingSettlementsSettlementCompleteRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersIssuingSettlementsSettlementCompleteRequest copyWith({List<String> Function()? expand}) { return PostTestHelpersIssuingSettlementsSettlementCompleteRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingSettlementsSettlementCompleteRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingSettlementsSettlementCompleteRequest(expand: $expand)'; } 
 }
