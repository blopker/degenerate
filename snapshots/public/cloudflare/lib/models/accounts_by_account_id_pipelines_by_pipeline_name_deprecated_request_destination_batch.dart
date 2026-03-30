// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch {const AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch({this.maxBytes = 100000000, this.maxDurationS = 300.0, this.maxRows = 10000000, });

factory AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch.fromJson(Map<String, dynamic> json) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch(
  maxBytes: json.containsKey('max_bytes') ? (json['max_bytes'] as num).toInt() : 100000000,
  maxDurationS: json.containsKey('max_duration_s') ? (json['max_duration_s'] as num).toDouble() : 300.0,
  maxRows: json.containsKey('max_rows') ? (json['max_rows'] as num).toInt() : 10000000,
); }

/// Specifies rough maximum size of files.
final int maxBytes;

/// Specifies duration to wait to aggregate batches files.
final double maxDurationS;

/// Specifies rough maximum number of rows per file.
final int maxRows;

Map<String, dynamic> toJson() { return {
  'max_bytes': maxBytes,
  'max_duration_s': maxDurationS,
  'max_rows': maxRows,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'max_bytes', 'max_duration_s', 'max_rows'}.contains(key)); } 
AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch copyWith({int Function()? maxBytes, double Function()? maxDurationS, int Function()? maxRows, }) { return AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch(
  maxBytes: maxBytes != null ? maxBytes() : this.maxBytes,
  maxDurationS: maxDurationS != null ? maxDurationS() : this.maxDurationS,
  maxRows: maxRows != null ? maxRows() : this.maxRows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch &&
          maxBytes == other.maxBytes &&
          maxDurationS == other.maxDurationS &&
          maxRows == other.maxRows; } 
@override int get hashCode { return Object.hash(maxBytes, maxDurationS, maxRows); } 
@override String toString() { return 'AccountsByAccountIdPipelinesByPipelineNameDeprecatedRequestDestinationBatch(maxBytes: $maxBytes, maxDurationS: $maxDurationS, maxRows: $maxRows)'; } 
 }
