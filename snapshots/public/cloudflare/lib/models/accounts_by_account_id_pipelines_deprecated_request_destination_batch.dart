// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch {const AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch({this.maxBytes, this.maxDurationS, this.maxRows, });

factory AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch.fromJson(Map<String, dynamic> json) {return AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch(
  maxBytes: json['max_bytes'] != null ? (json['max_bytes'] as num).toInt() : null,
  maxDurationS: json['max_duration_s'] != null ? (json['max_duration_s'] as num).toDouble() : null,
  maxRows: json['max_rows'] != null ? (json['max_rows'] as num).toInt() : null,
);}

/// Specifies rough maximum size of files.
final int? maxBytes;

/// Specifies duration to wait to aggregate batches files.
final double? maxDurationS;

/// Specifies rough maximum number of rows per file.
final int? maxRows;

/// The value with the schema default applied when absent.
int get maxBytesOrDefault {return maxBytes ?? 100000000;}
/// The value with the schema default applied when absent.
double get maxDurationSOrDefault {return maxDurationS ?? 300.0;}
/// The value with the schema default applied when absent.
int get maxRowsOrDefault {return maxRows ?? 10000000;}
Map<String, dynamic> toJson() {return {
  'max_bytes': ?maxBytes,
  'max_duration_s': ?maxDurationS,
  'max_rows': ?maxRows,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'max_bytes', 'max_duration_s', 'max_rows'}.contains(key));}
AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch copyWith({int? Function()? maxBytes, double? Function()? maxDurationS, int? Function()? maxRows, }) {return AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch(
  maxBytes: maxBytes != null ? maxBytes() : this.maxBytes,
  maxDurationS: maxDurationS != null ? maxDurationS() : this.maxDurationS,
  maxRows: maxRows != null ? maxRows() : this.maxRows,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch &&
          maxBytes == other.maxBytes &&
          maxDurationS == other.maxDurationS &&
          maxRows == other.maxRows;}
@override int get hashCode {return Object.hash(maxBytes, maxDurationS, maxRows);}
@override String toString() {return 'AccountsByAccountIdPipelinesDeprecatedRequestDestinationBatch(maxBytes: $maxBytes, maxDurationS: $maxDurationS, maxRows: $maxRows)';}
}
