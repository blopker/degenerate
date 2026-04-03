// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Which file extensions to minify automatically.
@immutable final class RulesetsSetConfigAutominify {const RulesetsSetConfigAutominify({this.css = false, this.html = false, this.js = false, });

factory RulesetsSetConfigAutominify.fromJson(Map<String, dynamic> json) { return RulesetsSetConfigAutominify(
  css: json.containsKey('css') ? json['css'] as bool : false,
  html: json.containsKey('html') ? json['html'] as bool : false,
  js: json.containsKey('js') ? json['js'] as bool : false,
); }

/// Whether to minify CSS files.
final bool css;

/// Whether to minify HTML files.
final bool html;

/// Whether to minify JavaScript files.
final bool js;

Map<String, dynamic> toJson() { return {
  'css': css,
  'html': html,
  'js': js,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'css', 'html', 'js'}.contains(key)); } 
RulesetsSetConfigAutominify copyWith({bool Function()? css, bool Function()? html, bool Function()? js, }) { return RulesetsSetConfigAutominify(
  css: css != null ? css() : this.css,
  html: html != null ? html() : this.html,
  js: js != null ? js() : this.js,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsSetConfigAutominify &&
          css == other.css &&
          html == other.html &&
          js == other.js; } 
@override int get hashCode { return Object.hash(css, html, js); } 
@override String toString() { return 'RulesetsSetConfigAutominify(css: $css, html: $html, js: $js)'; } 
 }
