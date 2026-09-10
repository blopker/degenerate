// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_rewrite_uri_path.dart';/// A URI path rewrite.
@immutable final class UriPath2 {const UriPath2({required this.path});

factory UriPath2.fromJson(Map<String, dynamic> json) {return UriPath2(
  path: RulesetsRewriteUriPath.fromJson(json['path'] as Map<String, dynamic>),
);}

final RulesetsRewriteUriPath path;

Map<String, dynamic> toJson() {return {
  'path': path.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('path');}
UriPath2 copyWith({RulesetsRewriteUriPath? path}) {return UriPath2(
  path: path ?? this.path,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is UriPath2 &&
          path == other.path;}
@override int get hashCode {return path.hashCode;}
@override String toString() {return 'UriPath2(path: $path)';}
}
