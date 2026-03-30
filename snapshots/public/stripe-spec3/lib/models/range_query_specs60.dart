// GENERATED CODE - DO NOT MODIFY BY HAND

final class RangeQuerySpecs60 {const RangeQuerySpecs60({this.gt, this.gte, this.lt, this.lte, });

factory RangeQuerySpecs60.fromJson(Map<String, dynamic> json) { return RangeQuerySpecs60(
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
RangeQuerySpecs60 copyWith({int Function()? gt, int Function()? gte, int Function()? lt, int Function()? lte, }) { return RangeQuerySpecs60(
  gt: gt != null ? gt() : this.gt,
  gte: gte != null ? gte() : this.gte,
  lt: lt != null ? lt() : this.lt,
  lte: lte != null ? lte() : this.lte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RangeQuerySpecs60 &&
          gt == other.gt &&
          gte == other.gte &&
          lt == other.lt &&
          lte == other.lte; } 
@override int get hashCode { return Object.hash(gt, gte, lt, lte); } 
@override String toString() { return 'RangeQuerySpecs60(gt: $gt, gte: $gte, lt: $lt, lte: $lte)'; } 
 }
