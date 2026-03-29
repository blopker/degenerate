// GENERATED CODE - DO NOT MODIFY BY HAND

/// Breakdown of totals for threats.
final class Threats {const Threats({this.all, this.country, this.type, });

factory Threats.fromJson(Map<String, dynamic> json) { return Threats(
  all: json['all'] != null ? (json['all'] as num).toInt() : null,
  country: (json['country'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  type: (json['type'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

/// The total number of identifiable threats received over the time frame.
final int? all;

/// A list of key/value pairs where the key is a two-digit country code and the value is the number of malicious requests received from that country.
final Map<String,dynamic>? country;

/// The list of key/value pairs where the key is a threat category and the value is the number of requests.
final Map<String,dynamic>? type;

Map<String, dynamic> toJson() { return {
  'all': ?all,
  'country': ?country,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Threats copyWith({int Function()? all, Map<String, dynamic> Function()? country, Map<String, dynamic> Function()? type, }) { return Threats(
  all: all != null ? all() : this.all,
  country: country != null ? country() : this.country,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Threats &&
          all == other.all &&
          country == other.country &&
          type == other.type; } 
@override int get hashCode { return Object.hash(all, country, type); } 
@override String toString() { return 'Threats(all: $all, country: $country, type: $type)'; } 
 }
