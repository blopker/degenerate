// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceSendRequest {const PostInvoicesInvoiceSendRequest({this.expand});

factory PostInvoicesInvoiceSendRequest.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceSendRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand'}.contains(key)); } 
PostInvoicesInvoiceSendRequest copyWith({List<String> Function()? expand}) { return PostInvoicesInvoiceSendRequest(
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceSendRequest &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hashAll(expand ?? const []).hashCode; } 
@override String toString() { return 'PostInvoicesInvoiceSendRequest(expand: $expand)'; } 
 }
