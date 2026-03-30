// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_scanning_scan.dart';import 'secret_scanning_scan_history_custom_pattern_backfill_scans.dart';final class SecretScanningScanHistory {const SecretScanningScanHistory({this.incrementalScans, this.patternUpdateScans, this.backfillScans, this.customPatternBackfillScans, });

factory SecretScanningScanHistory.fromJson(Map<String, dynamic> json) { return SecretScanningScanHistory(
  incrementalScans: (json['incremental_scans'] as List<dynamic>?)?.map((e) => SecretScanningScan.fromJson(e as Map<String, dynamic>)).toList(),
  patternUpdateScans: (json['pattern_update_scans'] as List<dynamic>?)?.map((e) => SecretScanningScan.fromJson(e as Map<String, dynamic>)).toList(),
  backfillScans: (json['backfill_scans'] as List<dynamic>?)?.map((e) => SecretScanningScan.fromJson(e as Map<String, dynamic>)).toList(),
  customPatternBackfillScans: (json['custom_pattern_backfill_scans'] as List<dynamic>?)?.map((e) => SecretScanningScanHistoryCustomPatternBackfillScans.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<SecretScanningScan>? incrementalScans;

final List<SecretScanningScan>? patternUpdateScans;

final List<SecretScanningScan>? backfillScans;

final List<SecretScanningScanHistoryCustomPatternBackfillScans>? customPatternBackfillScans;

Map<String, dynamic> toJson() { return {
  if (incrementalScans != null) 'incremental_scans': incrementalScans?.map((e) => e.toJson()).toList(),
  if (patternUpdateScans != null) 'pattern_update_scans': patternUpdateScans?.map((e) => e.toJson()).toList(),
  if (backfillScans != null) 'backfill_scans': backfillScans?.map((e) => e.toJson()).toList(),
  if (customPatternBackfillScans != null) 'custom_pattern_backfill_scans': customPatternBackfillScans?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'incremental_scans', 'pattern_update_scans', 'backfill_scans', 'custom_pattern_backfill_scans'}.contains(key)); } 
SecretScanningScanHistory copyWith({List<SecretScanningScan> Function()? incrementalScans, List<SecretScanningScan> Function()? patternUpdateScans, List<SecretScanningScan> Function()? backfillScans, List<SecretScanningScanHistoryCustomPatternBackfillScans> Function()? customPatternBackfillScans, }) { return SecretScanningScanHistory(
  incrementalScans: incrementalScans != null ? incrementalScans() : this.incrementalScans,
  patternUpdateScans: patternUpdateScans != null ? patternUpdateScans() : this.patternUpdateScans,
  backfillScans: backfillScans != null ? backfillScans() : this.backfillScans,
  customPatternBackfillScans: customPatternBackfillScans != null ? customPatternBackfillScans() : this.customPatternBackfillScans,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningScanHistory &&
          listEquals(incrementalScans, other.incrementalScans) &&
          listEquals(patternUpdateScans, other.patternUpdateScans) &&
          listEquals(backfillScans, other.backfillScans) &&
          listEquals(customPatternBackfillScans, other.customPatternBackfillScans); } 
@override int get hashCode { return Object.hash(Object.hashAll(incrementalScans ?? const []), Object.hashAll(patternUpdateScans ?? const []), Object.hashAll(backfillScans ?? const []), Object.hashAll(customPatternBackfillScans ?? const [])); } 
@override String toString() { return 'SecretScanningScanHistory(incrementalScans: $incrementalScans, patternUpdateScans: $patternUpdateScans, backfillScans: $backfillScans, customPatternBackfillScans: $customPatternBackfillScans)'; } 
 }
