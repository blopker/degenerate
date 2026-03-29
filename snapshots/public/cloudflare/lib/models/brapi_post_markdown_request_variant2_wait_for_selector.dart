// GENERATED CODE - DO NOT MODIFY BY HAND

/// Wait for the selector to appear in page. Check [options](https://pptr.dev/api/puppeteer.page.waitforselector).
final class BrapiPostMarkdownRequestVariant2WaitForSelector {const BrapiPostMarkdownRequestVariant2WaitForSelector({this.hidden, required this.selector, this.timeout, this.visible, });

factory BrapiPostMarkdownRequestVariant2WaitForSelector.fromJson(Map<String, dynamic> json) { return BrapiPostMarkdownRequestVariant2WaitForSelector(
  hidden: json['hidden'] as bool?,
  selector: json['selector'] as String,
  timeout: json['timeout'] != null ? (json['timeout'] as num).toDouble() : null,
  visible: json['visible'] as bool?,
); }

final bool? hidden;

final String selector;

final double? timeout;

final bool? visible;

Map<String, dynamic> toJson() { return {
  'hidden': ?hidden,
  'selector': selector,
  'timeout': ?timeout,
  'visible': ?visible,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('selector') && json['selector'] is String; } 
BrapiPostMarkdownRequestVariant2WaitForSelector copyWith({bool Function()? hidden, String? selector, double Function()? timeout, bool Function()? visible, }) { return BrapiPostMarkdownRequestVariant2WaitForSelector(
  hidden: hidden != null ? hidden() : this.hidden,
  selector: selector ?? this.selector,
  timeout: timeout != null ? timeout() : this.timeout,
  visible: visible != null ? visible() : this.visible,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostMarkdownRequestVariant2WaitForSelector &&
          hidden == other.hidden &&
          selector == other.selector &&
          timeout == other.timeout &&
          visible == other.visible; } 
@override int get hashCode { return Object.hash(hidden, selector, timeout, visible); } 
@override String toString() { return 'BrapiPostMarkdownRequestVariant2WaitForSelector(hidden: $hidden, selector: $selector, timeout: $timeout, visible: $visible)'; } 
 }
