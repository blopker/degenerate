// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RangeQuerySpecs22 {const RangeQuerySpecs22({this.gt, this.gte, this.lt, this.lte, });

factory RangeQuerySpecs22.fromJson(Map<String, dynamic> json) { return RangeQuerySpecs22(
  gt: json['gt'] != null ? (json['gt'] as num).toInt() : null,
  gte: json['gte'] != null ? (json['gte'] as num).toInt() : null,
  lt: json['lt'] != null ? (json['lt'] as num).toInt() : null,
  lte: json['lte'] != null ? (json['lte'] as num).toInt() : null,
); }

final int? gt;

final int? gte;

final int? lt;

final int? lte;

Map<String, dynamic> toJson() { return {
  'gt': ?gt,
  'gte': ?gte,
  'lt': ?lt,
  'lte': ?lte,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'gt', 'gte', 'lt', 'lte'}.contains(key)); } 
RangeQuerySpecs22 copyWith({int Function()? gt, int Function()? gte, int Function()? lt, int Function()? lte, }) { return RangeQuerySpecs22(
  gt: gt != null ? gt() : this.gt,
  gte: gte != null ? gte() : this.gte,
  lt: lt != null ? lt() : this.lt,
  lte: lte != null ? lte() : this.lte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RangeQuerySpecs22 &&
          gt == other.gt &&
          gte == other.gte &&
          lt == other.lt &&
          lte == other.lte; } 
@override int get hashCode { return Object.hash(gt, gte, lt, lte); } 
@override String toString() { return 'RangeQuerySpecs22(gt: $gt, gte: $gte, lt: $lt, lte: $lte)'; } 
 }
