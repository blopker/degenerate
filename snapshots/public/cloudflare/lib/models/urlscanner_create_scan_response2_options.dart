// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerCreateScanResponse2Options {const UrlscannerCreateScanResponse2Options({this.useragent});

factory UrlscannerCreateScanResponse2Options.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanResponse2Options(
  useragent: json['useragent'] as String?,
); }

final String? useragent;

Map<String, dynamic> toJson() { return {
  'useragent': ?useragent,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
UrlscannerCreateScanResponse2Options copyWith({String Function()? useragent}) { return UrlscannerCreateScanResponse2Options(
  useragent: useragent != null ? useragent() : this.useragent,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanResponse2Options &&
          useragent == other.useragent; } 
@override int get hashCode { return useragent.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanResponse2Options(useragent: $useragent)'; } 
 }
