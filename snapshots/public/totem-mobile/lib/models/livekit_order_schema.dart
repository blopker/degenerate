// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class LivekitOrderSchema {
  const LivekitOrderSchema({required this.order});

  factory LivekitOrderSchema.fromJson(Map<String, dynamic> json) {
    return LivekitOrderSchema(
      order: (json['order'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }

  final List<String> order;

  Map<String, dynamic> toJson() {
    return {'order': order};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('order');
  }

  LivekitOrderSchema copyWith({List<String>? order}) {
    return LivekitOrderSchema(order: order ?? this.order);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is LivekitOrderSchema && listEquals(order, other.order);
  }

  @override
  int get hashCode {
    return Object.hashAll(order).hashCode;
  }

  @override
  String toString() {
    return 'LivekitOrderSchema(order: $order)';
  }
}
