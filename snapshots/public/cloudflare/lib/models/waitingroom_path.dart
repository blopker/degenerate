// GENERATED CODE - DO NOT MODIFY BY HAND

/// Sets the path within the host to enable the waiting room on. The waiting room will be enabled for all subpaths as well. If there are two waiting rooms on the same subpath, the waiting room for the most specific path will be chosen. Wildcards and query parameters are not supported.
extension type const WaitingroomPath(String value) {
factory WaitingroomPath.fromJson(String json) => WaitingroomPath(json);

String toJson() => value;

}
