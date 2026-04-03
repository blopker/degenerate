// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ItemBillingThresholdsParam {const ItemBillingThresholdsParam({required this.usageGte});

factory ItemBillingThresholdsParam.fromJson(Map<String, dynamic> json) { return ItemBillingThresholdsParam(
  usageGte: (json['usage_gte'] as num).toInt(),
); }

final int usageGte;

Map<String, dynamic> toJson() { return {
  'usage_gte': usageGte,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('usage_gte') && json['usage_gte'] is num; } 
ItemBillingThresholdsParam copyWith({int? usageGte}) { return ItemBillingThresholdsParam(
  usageGte: usageGte ?? this.usageGte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ItemBillingThresholdsParam &&
          usageGte == other.usageGte; } 
@override int get hashCode { return usageGte.hashCode; } 
@override String toString() { return 'ItemBillingThresholdsParam(usageGte: $usageGte)'; } 
 }
