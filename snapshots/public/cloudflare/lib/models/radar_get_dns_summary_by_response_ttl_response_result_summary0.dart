// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsSummaryByResponseTtlResponseResultSummary0 {const RadarGetDnsSummaryByResponseTtlResponseResultSummary0({required this.gt1dLte1w, required this.gt1hLte1d, required this.gt1mLte5m, required this.gt1w, required this.gt5mLte15m, required this.gt15mLte1h, required this.lte1m, });

factory RadarGetDnsSummaryByResponseTtlResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseTtlResponseResultSummary0(
  gt1dLte1w: json['gt_1d_lte_1w'] as String,
  gt1hLte1d: json['gt_1h_lte_1d'] as String,
  gt1mLte5m: json['gt_1m_lte_5m'] as String,
  gt1w: json['gt_1w'] as String,
  gt5mLte15m: json['gt_5m_lte_15m'] as String,
  gt15mLte1h: json['gt_15m_lte_1h'] as String,
  lte1m: json['lte_1m'] as String,
); }

/// A numeric string.
final String gt1dLte1w;

/// A numeric string.
final String gt1hLte1d;

/// A numeric string.
final String gt1mLte5m;

/// A numeric string.
final String gt1w;

/// A numeric string.
final String gt5mLte15m;

/// A numeric string.
final String gt15mLte1h;

/// A numeric string.
final String lte1m;

Map<String, dynamic> toJson() { return {
  'gt_1d_lte_1w': gt1dLte1w,
  'gt_1h_lte_1d': gt1hLte1d,
  'gt_1m_lte_5m': gt1mLte5m,
  'gt_1w': gt1w,
  'gt_5m_lte_15m': gt5mLte15m,
  'gt_15m_lte_1h': gt15mLte1h,
  'lte_1m': lte1m,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('gt_1d_lte_1w') && json['gt_1d_lte_1w'] is String &&
      json.containsKey('gt_1h_lte_1d') && json['gt_1h_lte_1d'] is String &&
      json.containsKey('gt_1m_lte_5m') && json['gt_1m_lte_5m'] is String &&
      json.containsKey('gt_1w') && json['gt_1w'] is String &&
      json.containsKey('gt_5m_lte_15m') && json['gt_5m_lte_15m'] is String &&
      json.containsKey('gt_15m_lte_1h') && json['gt_15m_lte_1h'] is String &&
      json.containsKey('lte_1m') && json['lte_1m'] is String; } 
RadarGetDnsSummaryByResponseTtlResponseResultSummary0 copyWith({String? gt1dLte1w, String? gt1hLte1d, String? gt1mLte5m, String? gt1w, String? gt5mLte15m, String? gt15mLte1h, String? lte1m, }) { return RadarGetDnsSummaryByResponseTtlResponseResultSummary0(
  gt1dLte1w: gt1dLte1w ?? this.gt1dLte1w,
  gt1hLte1d: gt1hLte1d ?? this.gt1hLte1d,
  gt1mLte5m: gt1mLte5m ?? this.gt1mLte5m,
  gt1w: gt1w ?? this.gt1w,
  gt5mLte15m: gt5mLte15m ?? this.gt5mLte15m,
  gt15mLte1h: gt15mLte1h ?? this.gt15mLte1h,
  lte1m: lte1m ?? this.lte1m,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseTtlResponseResultSummary0 &&
          gt1dLte1w == other.gt1dLte1w &&
          gt1hLte1d == other.gt1hLte1d &&
          gt1mLte5m == other.gt1mLte5m &&
          gt1w == other.gt1w &&
          gt5mLte15m == other.gt5mLte15m &&
          gt15mLte1h == other.gt15mLte1h &&
          lte1m == other.lte1m; } 
@override int get hashCode { return Object.hash(gt1dLte1w, gt1hLte1d, gt1mLte5m, gt1w, gt5mLte15m, gt15mLte1h, lte1m); } 
@override String toString() { return 'RadarGetDnsSummaryByResponseTtlResponseResultSummary0(gt1dLte1w: $gt1dLte1w, gt1hLte1d: $gt1hLte1d, gt1mLte5m: $gt1mLte5m, gt1w: $gt1w, gt5mLte15m: $gt5mLte15m, gt15mLte1h: $gt15mLte1h, lte1m: $lte1m)'; } 
 }
