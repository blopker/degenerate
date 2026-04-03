// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostApplicationFeesIdRefundRequest {const PostApplicationFeesIdRefundRequest({this.amount, this.directive, this.expand, });

factory PostApplicationFeesIdRefundRequest.fromJson(Map<String, dynamic> json) { return PostApplicationFeesIdRefundRequest(
  amount: json['amount'] != null ? (json['amount'] as num).toInt() : null,
  directive: json['directive'] as String?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final int? amount;

final String? directive;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'amount': ?amount,
  'directive': ?directive,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'amount', 'directive', 'expand'}.contains(key)); } 
PostApplicationFeesIdRefundRequest copyWith({int Function()? amount, String Function()? directive, List<String> Function()? expand, }) { return PostApplicationFeesIdRefundRequest(
  amount: amount != null ? amount() : this.amount,
  directive: directive != null ? directive() : this.directive,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostApplicationFeesIdRefundRequest &&
          amount == other.amount &&
          directive == other.directive &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(amount, directive, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostApplicationFeesIdRefundRequest(amount: $amount, directive: $directive, expand: $expand)'; } 
 }
