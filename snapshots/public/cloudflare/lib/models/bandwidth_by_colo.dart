// GENERATED CODE - DO NOT MODIFY BY HAND

/// Breakdown of totals for bandwidth in the form of bytes.
final class BandwidthByColo {const BandwidthByColo({this.all, this.cached, this.uncached, });

factory BandwidthByColo.fromJson(Map<String, dynamic> json) { return BandwidthByColo(
  all: json['all'] != null ? (json['all'] as num).toInt() : null,
  cached: json['cached'] != null ? (json['cached'] as num).toInt() : null,
  uncached: json['uncached'] != null ? (json['uncached'] as num).toInt() : null,
); }

/// The total number of bytes served within the time frame.
final int? all;

/// The number of bytes that were cached (and served) by Cloudflare.
final int? cached;

/// The number of bytes that were fetched and served from the origin server.
final int? uncached;

Map<String, dynamic> toJson() { return {
  'all': ?all,
  'cached': ?cached,
  'uncached': ?uncached,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'all', 'cached', 'uncached'}.contains(key)); } 
BandwidthByColo copyWith({int Function()? all, int Function()? cached, int Function()? uncached, }) { return BandwidthByColo(
  all: all != null ? all() : this.all,
  cached: cached != null ? cached() : this.cached,
  uncached: uncached != null ? uncached() : this.uncached,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BandwidthByColo &&
          all == other.all &&
          cached == other.cached &&
          uncached == other.uncached; } 
@override int get hashCode { return Object.hash(all, cached, uncached); } 
@override String toString() { return 'BandwidthByColo(all: $all, cached: $cached, uncached: $uncached)'; } 
 }
