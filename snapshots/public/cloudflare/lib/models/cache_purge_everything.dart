// GENERATED CODE - DO NOT MODIFY BY HAND

final class CachePurgeEverything {const CachePurgeEverything({this.purgeEverything});

factory CachePurgeEverything.fromJson(Map<String, dynamic> json) { return CachePurgeEverything(
  purgeEverything: json['purge_everything'] as bool?,
); }

/// For more information, please refer to [purge everything documentation page](https://developers.cloudflare.com/cache/how-to/purge-cache/purge-everything/).
final bool? purgeEverything;

Map<String, dynamic> toJson() { return {
  'purge_everything': ?purgeEverything,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CachePurgeEverything copyWith({bool Function()? purgeEverything}) { return CachePurgeEverything(
  purgeEverything: purgeEverything != null ? purgeEverything() : this.purgeEverything,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CachePurgeEverything &&
          purgeEverything == other.purgeEverything; } 
@override int get hashCode { return purgeEverything.hashCode; } 
@override String toString() { return 'CachePurgeEverything(purgeEverything: $purgeEverything)'; } 
 }
