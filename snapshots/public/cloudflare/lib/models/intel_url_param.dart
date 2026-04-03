// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// URL(s) to filter submissions results by.
extension type IntelUrl(Uri value) {
factory IntelUrl.fromJson(String json) => IntelUrl(Uri.parse(json));

String toJson() => value.toString();

}
@immutable final class IntelUrlParam {const IntelUrlParam({this.url});

factory IntelUrlParam.fromJson(Map<String, dynamic> json) { return IntelUrlParam(
  url: json['url'] != null ? IntelUrl.fromJson(json['url'] as String) : null,
); }

/// URL(s) to filter submissions results by.
final IntelUrl? url;

Map<String, dynamic> toJson() { return {
  if (url != null) 'url': url?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url'}.contains(key)); } 
IntelUrlParam copyWith({IntelUrl Function()? url}) { return IntelUrlParam(
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IntelUrlParam &&
          url == other.url; } 
@override int get hashCode { return url.hashCode; } 
@override String toString() { return 'IntelUrlParam(url: $url)'; } 
 }
