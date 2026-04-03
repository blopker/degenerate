// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ItemBillingThresholdsParam3 {const ItemBillingThresholdsParam3({required this.usageGte});

factory ItemBillingThresholdsParam3.fromJson(Map<String, dynamic> json) { return ItemBillingThresholdsParam3(
  usageGte: (json['usage_gte'] as num).toInt(),
); }

final int usageGte;

Map<String, dynamic> toJson() { return {
  'usage_gte': usageGte,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('usage_gte') && json['usage_gte'] is num; } 
ItemBillingThresholdsParam3 copyWith({int? usageGte}) { return ItemBillingThresholdsParam3(
  usageGte: usageGte ?? this.usageGte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemBillingThresholdsParam3 &&
          usageGte == other.usageGte; } 
@override int get hashCode { return usageGte.hashCode; } 
@override String toString() { return 'ItemBillingThresholdsParam3(usageGte: $usageGte)'; } 
 }
