// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostInvoicesInvoiceFinalizeRequest {const PostInvoicesInvoiceFinalizeRequest({this.autoAdvance, this.expand, });

factory PostInvoicesInvoiceFinalizeRequest.fromJson(Map<String, dynamic> json) { return PostInvoicesInvoiceFinalizeRequest(
  autoAdvance: json['auto_advance'] as bool?,
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// Controls whether Stripe performs [automatic collection](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
final bool? autoAdvance;

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

Map<String, dynamic> toJson() { return {
  'auto_advance': ?autoAdvance,
  'expand': ?expand,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auto_advance', 'expand'}.contains(key)); } 
PostInvoicesInvoiceFinalizeRequest copyWith({bool Function()? autoAdvance, List<String> Function()? expand, }) { return PostInvoicesInvoiceFinalizeRequest(
  autoAdvance: autoAdvance != null ? autoAdvance() : this.autoAdvance,
  expand: expand != null ? expand() : this.expand,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostInvoicesInvoiceFinalizeRequest &&
          autoAdvance == other.autoAdvance &&
          listEquals(expand, other.expand); } 
@override int get hashCode { return Object.hash(autoAdvance, Object.hashAll(expand ?? const [])); } 
@override String toString() { return 'PostInvoicesInvoiceFinalizeRequest(autoAdvance: $autoAdvance, expand: $expand)'; } 
 }
