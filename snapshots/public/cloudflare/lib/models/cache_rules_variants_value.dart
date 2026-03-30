// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
final class CacheRulesVariantsValue {const CacheRulesVariantsValue({this.avif, this.bmp, this.gif, this.jp2, this.jpeg, this.jpg, this.jpg2, this.png, this.tif, this.tiff, this.webp, });

factory CacheRulesVariantsValue.fromJson(Map<String, dynamic> json) { return CacheRulesVariantsValue(
  avif: (json['avif'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bmp: (json['bmp'] as List<dynamic>?)?.map((e) => e as String).toList(),
  gif: (json['gif'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jp2: (json['jp2'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jpeg: (json['jpeg'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jpg: (json['jpg'] as List<dynamic>?)?.map((e) => e as String).toList(),
  jpg2: (json['jpg2'] as List<dynamic>?)?.map((e) => e as String).toList(),
  png: (json['png'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tif: (json['tif'] as List<dynamic>?)?.map((e) => e as String).toList(),
  tiff: (json['tiff'] as List<dynamic>?)?.map((e) => e as String).toList(),
  webp: (json['webp'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

/// List of strings with the MIME types of all the variants that should be served for avif.
final List<String>? avif;

/// List of strings with the MIME types of all the variants that should be served for bmp.
final List<String>? bmp;

/// List of strings with the MIME types of all the variants that should be served for gif.
final List<String>? gif;

/// List of strings with the MIME types of all the variants that should be served for jp2.
final List<String>? jp2;

/// List of strings with the MIME types of all the variants that should be served for jpeg.
final List<String>? jpeg;

/// List of strings with the MIME types of all the variants that should be served for jpg.
final List<String>? jpg;

/// List of strings with the MIME types of all the variants that should be served for jpg2.
final List<String>? jpg2;

/// List of strings with the MIME types of all the variants that should be served for png.
final List<String>? png;

/// List of strings with the MIME types of all the variants that should be served for tif.
final List<String>? tif;

/// List of strings with the MIME types of all the variants that should be served for tiff.
final List<String>? tiff;

/// List of strings with the MIME types of all the variants that should be served for webp.
final List<String>? webp;

Map<String, dynamic> toJson() { return {
  'avif': ?avif,
  'bmp': ?bmp,
  'gif': ?gif,
  'jp2': ?jp2,
  'jpeg': ?jpeg,
  'jpg': ?jpg,
  'jpg2': ?jpg2,
  'png': ?png,
  'tif': ?tif,
  'tiff': ?tiff,
  'webp': ?webp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'avif', 'bmp', 'gif', 'jp2', 'jpeg', 'jpg', 'jpg2', 'png', 'tif', 'tiff', 'webp'}.contains(key)); } 
CacheRulesVariantsValue copyWith({List<String> Function()? avif, List<String> Function()? bmp, List<String> Function()? gif, List<String> Function()? jp2, List<String> Function()? jpeg, List<String> Function()? jpg, List<String> Function()? jpg2, List<String> Function()? png, List<String> Function()? tif, List<String> Function()? tiff, List<String> Function()? webp, }) { return CacheRulesVariantsValue(
  avif: avif != null ? avif() : this.avif,
  bmp: bmp != null ? bmp() : this.bmp,
  gif: gif != null ? gif() : this.gif,
  jp2: jp2 != null ? jp2() : this.jp2,
  jpeg: jpeg != null ? jpeg() : this.jpeg,
  jpg: jpg != null ? jpg() : this.jpg,
  jpg2: jpg2 != null ? jpg2() : this.jpg2,
  png: png != null ? png() : this.png,
  tif: tif != null ? tif() : this.tif,
  tiff: tiff != null ? tiff() : this.tiff,
  webp: webp != null ? webp() : this.webp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesVariantsValue &&
          listEquals(avif, other.avif) &&
          listEquals(bmp, other.bmp) &&
          listEquals(gif, other.gif) &&
          listEquals(jp2, other.jp2) &&
          listEquals(jpeg, other.jpeg) &&
          listEquals(jpg, other.jpg) &&
          listEquals(jpg2, other.jpg2) &&
          listEquals(png, other.png) &&
          listEquals(tif, other.tif) &&
          listEquals(tiff, other.tiff) &&
          listEquals(webp, other.webp); } 
@override int get hashCode { return Object.hash(Object.hashAll(avif ?? const []), Object.hashAll(bmp ?? const []), Object.hashAll(gif ?? const []), Object.hashAll(jp2 ?? const []), Object.hashAll(jpeg ?? const []), Object.hashAll(jpg ?? const []), Object.hashAll(jpg2 ?? const []), Object.hashAll(png ?? const []), Object.hashAll(tif ?? const []), Object.hashAll(tiff ?? const []), Object.hashAll(webp ?? const [])); } 
@override String toString() { return 'CacheRulesVariantsValue(avif: $avif, bmp: $bmp, gif: $gif, jp2: $jp2, jpeg: $jpeg, jpg: $jpg, jpg2: $jpg2, png: $png, tif: $tif, tiff: $tiff, webp: $webp)'; } 
 }
