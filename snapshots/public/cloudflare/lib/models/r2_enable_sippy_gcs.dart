// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_enable_sippy_gcs_destination.dart';import 'r2_enable_sippy_gcs_source.dart';final class R2EnableSippyGcs {const R2EnableSippyGcs({this.destination, this.source, });

factory R2EnableSippyGcs.fromJson(Map<String, dynamic> json) { return R2EnableSippyGcs(
  destination: json['destination'] != null ? R2EnableSippyGcsDestination.fromJson(json['destination'] as Map<String, dynamic>) : null,
  source: json['source'] != null ? R2EnableSippyGcsSource.fromJson(json['source'] as Map<String, dynamic>) : null,
); }

/// R2 bucket to copy objects to.
final R2EnableSippyGcsDestination? destination;

/// GCS bucket to copy objects from.
final R2EnableSippyGcsSource? source;

Map<String, dynamic> toJson() { return {
  if (destination != null) 'destination': destination?.toJson(),
  if (source != null) 'source': source?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2EnableSippyGcs copyWith({R2EnableSippyGcsDestination Function()? destination, R2EnableSippyGcsSource Function()? source, }) { return R2EnableSippyGcs(
  destination: destination != null ? destination() : this.destination,
  source: source != null ? source() : this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2EnableSippyGcs &&
          destination == other.destination &&
          source == other.source; } 
@override int get hashCode { return Object.hash(destination, source); } 
@override String toString() { return 'R2EnableSippyGcs(destination: $destination, source: $source)'; } 
 }
