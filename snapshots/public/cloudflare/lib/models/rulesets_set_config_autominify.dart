// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Which file extensions to minify automatically.
@immutable final class RulesetsSetConfigAutominify {const RulesetsSetConfigAutominify({this.css, this.html, this.js, });

factory RulesetsSetConfigAutominify.fromJson(Map<String, dynamic> json) { return RulesetsSetConfigAutominify(
  css: json['css'] as bool?,
  html: json['html'] as bool?,
  js: json['js'] as bool?,
); }

/// Whether to minify CSS files.
final bool? css;

/// Whether to minify HTML files.
final bool? html;

/// Whether to minify JavaScript files.
final bool? js;

/// The value with the schema default applied when absent.
bool get cssOrDefault { return css ?? false; } 
/// The value with the schema default applied when absent.
bool get htmlOrDefault { return html ?? false; } 
/// The value with the schema default applied when absent.
bool get jsOrDefault { return js ?? false; } 
Map<String, dynamic> toJson() { return {
  'css': ?css,
  'html': ?html,
  'js': ?js,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'css', 'html', 'js'}.contains(key)); } 
RulesetsSetConfigAutominify copyWith({bool? Function()? css, bool? Function()? html, bool? Function()? js, }) { return RulesetsSetConfigAutominify(
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
