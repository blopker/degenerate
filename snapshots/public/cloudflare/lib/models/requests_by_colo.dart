// GENERATED CODE - DO NOT MODIFY BY HAND

/// Breakdown of totals for requests.
final class RequestsByColo {const RequestsByColo({this.all, this.cached, this.country, this.httpStatus, this.uncached, });

factory RequestsByColo.fromJson(Map<String, dynamic> json) { return RequestsByColo(
  all: json['all'] != null ? (json['all'] as num).toInt() : null,
  cached: json['cached'] != null ? (json['cached'] as num).toInt() : null,
  country: (json['country'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  httpStatus: (json['http_status'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  uncached: json['uncached'] != null ? (json['uncached'] as num).toInt() : null,
); }

/// Total number of requests served.
final int? all;

/// Total number of cached requests served.
final int? cached;

/// Key/value pairs where the key is a two-digit country code and the value is the number of requests served to that country.
final Map<String,dynamic>? country;

/// A variable list of key/value pairs where the key is a HTTP status code and the value is the number of requests with that code served.
final Map<String,dynamic>? httpStatus;

/// Total number of requests served from the origin.
final int? uncached;

Map<String, dynamic> toJson() { return {
  'all': ?all,
  'cached': ?cached,
  'country': ?country,
  'http_status': ?httpStatus,
  'uncached': ?uncached,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'all', 'cached', 'country', 'http_status', 'uncached'}.contains(key)); } 
RequestsByColo copyWith({int Function()? all, int Function()? cached, Map<String, dynamic> Function()? country, Map<String, dynamic> Function()? httpStatus, int Function()? uncached, }) { return RequestsByColo(
  all: all != null ? all() : this.all,
  cached: cached != null ? cached() : this.cached,
  country: country != null ? country() : this.country,
  httpStatus: httpStatus != null ? httpStatus() : this.httpStatus,
  uncached: uncached != null ? uncached() : this.uncached,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RequestsByColo &&
          all == other.all &&
          cached == other.cached &&
          country == other.country &&
          httpStatus == other.httpStatus &&
          uncached == other.uncached; } 
@override int get hashCode { return Object.hash(all, cached, country, httpStatus, uncached); } 
@override String toString() { return 'RequestsByColo(all: $all, cached: $cached, country: $country, httpStatus: $httpStatus, uncached: $uncached)'; } 
 }
