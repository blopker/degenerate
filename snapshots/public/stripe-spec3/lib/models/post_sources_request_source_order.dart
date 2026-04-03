// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_sources_request_source_order_items.dart';import 'post_sources_request_source_order_shipping.dart';/// Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
@immutable final class PostSourcesRequestSourceOrder {const PostSourcesRequestSourceOrder({this.items, this.shipping, });

factory PostSourcesRequestSourceOrder.fromJson(Map<String, dynamic> json) { return PostSourcesRequestSourceOrder(
  items: (json['items'] as List<dynamic>?)?.map((e) => PostSourcesRequestSourceOrderItems.fromJson(e as Map<String, dynamic>)).toList(),
  shipping: json['shipping'] != null ? PostSourcesRequestSourceOrderShipping.fromJson(json['shipping'] as Map<String, dynamic>) : null,
); }

final List<PostSourcesRequestSourceOrderItems>? items;

final PostSourcesRequestSourceOrderShipping? shipping;

Map<String, dynamic> toJson() { return {
  if (items != null) 'items': items?.map((e) => e.toJson()).toList(),
  if (shipping != null) 'shipping': shipping?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'items', 'shipping'}.contains(key)); } 
PostSourcesRequestSourceOrder copyWith({List<PostSourcesRequestSourceOrderItems> Function()? items, PostSourcesRequestSourceOrderShipping Function()? shipping, }) { return PostSourcesRequestSourceOrder(
  items: items != null ? items() : this.items,
  shipping: shipping != null ? shipping() : this.shipping,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostSourcesRequestSourceOrder &&
          listEquals(items, other.items) &&
          shipping == other.shipping; } 
@override int get hashCode { return Object.hash(Object.hashAll(items ?? const []), shipping); } 
@override String toString() { return 'PostSourcesRequestSourceOrder(items: $items, shipping: $shipping)'; } 
 }
