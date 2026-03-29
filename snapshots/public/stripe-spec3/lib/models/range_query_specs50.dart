// GENERATED CODE - DO NOT MODIFY BY HAND

final class RangeQuerySpecs50 {const RangeQuerySpecs50({this.gt, this.gte, this.lt, this.lte, });

factory RangeQuerySpecs50.fromJson(Map<String, dynamic> json) { return RangeQuerySpecs50(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
RangeQuerySpecs50 copyWith({int Function()? gt, int Function()? gte, int Function()? lt, int Function()? lte, }) { return RangeQuerySpecs50(
  gt: gt != null ? gt() : this.gt,
  gte: gte != null ? gte() : this.gte,
  lt: lt != null ? lt() : this.lt,
  lte: lte != null ? lte() : this.lte,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RangeQuerySpecs50 &&
          gt == other.gt &&
          gte == other.gte &&
          lt == other.lt &&
          lte == other.lte; } 
@override int get hashCode { return Object.hash(gt, gte, lt, lte); } 
@override String toString() { return 'RangeQuerySpecs50(gt: $gt, gte: $gte, lt: $lt, lte: $lte)'; } 
 }
