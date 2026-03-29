// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// HTTP request cookie
extension type const ShieldCookie(String value) {
factory ShieldCookie.fromJson(String json) => ShieldCookie(json);

String toJson() => value;

}
/// HTTP request header (must be lowercase)
extension type const ShieldHeader(String value) {
factory ShieldHeader.fromJson(String json) => ShieldHeader(json);

String toJson() => value;

}
typedef ShieldTokenSources2 = OneOf2<ShieldHeader,ShieldCookie>;