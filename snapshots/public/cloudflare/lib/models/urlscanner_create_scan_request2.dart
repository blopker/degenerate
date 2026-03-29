// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Device resolutions.
final class UrlscannerCreateScanRequest2ScreenshotsResolutions {const UrlscannerCreateScanRequest2ScreenshotsResolutions._(this.value);

factory UrlscannerCreateScanRequest2ScreenshotsResolutions.fromJson(String json) { return switch (json) {
  'desktop' => desktop,
  'mobile' => mobile,
  'tablet' => tablet,
  _ => UrlscannerCreateScanRequest2ScreenshotsResolutions._(json),
}; }

static const UrlscannerCreateScanRequest2ScreenshotsResolutions desktop = UrlscannerCreateScanRequest2ScreenshotsResolutions._('desktop');

static const UrlscannerCreateScanRequest2ScreenshotsResolutions mobile = UrlscannerCreateScanRequest2ScreenshotsResolutions._('mobile');

static const UrlscannerCreateScanRequest2ScreenshotsResolutions tablet = UrlscannerCreateScanRequest2ScreenshotsResolutions._('tablet');

static const List<UrlscannerCreateScanRequest2ScreenshotsResolutions> values = [desktop, mobile, tablet];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanRequest2ScreenshotsResolutions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanRequest2ScreenshotsResolutions($value)'; } 
 }
/// Country to geo egress from
final class UrlscannerCreateScanRequest2Country {const UrlscannerCreateScanRequest2Country._(this.value);

factory UrlscannerCreateScanRequest2Country.fromJson(String json) { return switch (json) {
  'AF' => af,
  'AL' => al,
  'DZ' => dz,
  'AD' => ad,
  'AO' => ao,
  'AG' => ag,
  'AR' => ar,
  'AM' => am,
  'AU' => au,
  'AT' => at,
  'AZ' => az,
  'BH' => bh,
  'BD' => bd,
  'BB' => bb,
  'BY' => by,
  'BE' => be,
  'BZ' => bz,
  'BJ' => bj,
  'BM' => bm,
  'BT' => bt,
  'BO' => bo,
  'BA' => ba,
  'BW' => bw,
  'BR' => br,
  'BN' => bn,
  'BG' => bg,
  'BF' => bf,
  'BI' => bi,
  'KH' => kh,
  'CM' => cm,
  'CA' => ca,
  'CV' => cv,
  'KY' => ky,
  'CF' => cf,
  'TD' => td,
  'CL' => cl,
  'CN' => cn,
  'CO' => co,
  'KM' => km,
  'CG' => cg,
  'CR' => cr,
  'CI' => ci,
  'HR' => hr,
  'CU' => cu,
  'CY' => cy,
  'CZ' => cz,
  'CD' => cd,
  'DK' => dk,
  'DJ' => dj,
  'DM' => dm,
  'DO' => $do,
  'EC' => ec,
  'EG' => eg,
  'SV' => sv,
  'GQ' => gq,
  'ER' => er,
  'EE' => ee,
  'SZ' => sz,
  'ET' => et,
  'FJ' => fj,
  'FI' => fi,
  'FR' => fr,
  'GA' => ga,
  'GE' => ge,
  'DE' => de,
  'GH' => gh,
  'GR' => gr,
  'GL' => gl,
  'GD' => gd,
  'GT' => gt,
  'GN' => gn,
  'GW' => gw,
  'GY' => gy,
  'HT' => ht,
  'HN' => hn,
  'HU' => hu,
  'IS' => $is,
  'IN' => $in,
  'ID' => id,
  'IR' => ir,
  'IQ' => iq,
  'IE' => ie,
  'IL' => il,
  'IT' => it,
  'JM' => jm,
  'JP' => jp,
  'JO' => jo,
  'KZ' => kz,
  'KE' => ke,
  'KI' => ki,
  'KW' => kw,
  'KG' => kg,
  'LA' => la,
  'LV' => lv,
  'LB' => lb,
  'LS' => ls,
  'LR' => lr,
  'LY' => ly,
  'LI' => li,
  'LT' => lt,
  'LU' => lu,
  'MO' => mo,
  'MG' => mg,
  'MW' => mw,
  'MY' => my,
  'MV' => mv,
  'ML' => ml,
  'MR' => mr,
  'MU' => mu,
  'MX' => mx,
  'FM' => fm,
  'MD' => md,
  'MC' => mc,
  'MN' => mn,
  'MS' => ms,
  'MA' => ma,
  'MZ' => mz,
  'MM' => mm,
  'NA' => na,
  'NR' => nr,
  'NP' => np,
  'NL' => nl,
  'NZ' => nz,
  'NI' => ni,
  'NE' => ne,
  'NG' => ng,
  'KP' => kp,
  'MK' => mk,
  'NO' => no,
  'OM' => om,
  'PK' => pk,
  'PS' => ps,
  'PA' => pa,
  'PG' => pg,
  'PY' => py,
  'PE' => pe,
  'PH' => ph,
  'PL' => pl,
  'PT' => pt,
  'QA' => qa,
  'RO' => ro,
  'RU' => ru,
  'RW' => rw,
  'SH' => sh,
  'KN' => kn,
  'LC' => lc,
  'VC' => vc,
  'WS' => ws,
  'SM' => sm,
  'ST' => st,
  'SA' => sa,
  'SN' => sn,
  'RS' => rs,
  'SC' => sc,
  'SL' => sl,
  'SK' => sk,
  'SI' => si,
  'SB' => sb,
  'SO' => so,
  'ZA' => za,
  'KR' => kr,
  'SS' => ss,
  'ES' => es,
  'LK' => lk,
  'SD' => sd,
  'SR' => sr,
  'SE' => se,
  'CH' => ch,
  'SY' => sy,
  'TW' => tw,
  'TJ' => tj,
  'TZ' => tz,
  'TH' => th,
  'BS' => bs,
  'GM' => gm,
  'TL' => tl,
  'TG' => tg,
  'TO' => to,
  'TT' => tt,
  'TN' => tn,
  'TR' => tr,
  'TM' => tm,
  'UG' => ug,
  'UA' => ua,
  'AE' => ae,
  'GB' => gb,
  'US' => us,
  'UY' => uy,
  'UZ' => uz,
  'VU' => vu,
  'VE' => ve,
  'VN' => vn,
  'YE' => ye,
  'ZM' => zm,
  'ZW' => zw,
  _ => UrlscannerCreateScanRequest2Country._(json),
}; }

static const UrlscannerCreateScanRequest2Country af = UrlscannerCreateScanRequest2Country._('AF');

static const UrlscannerCreateScanRequest2Country al = UrlscannerCreateScanRequest2Country._('AL');

static const UrlscannerCreateScanRequest2Country dz = UrlscannerCreateScanRequest2Country._('DZ');

static const UrlscannerCreateScanRequest2Country ad = UrlscannerCreateScanRequest2Country._('AD');

static const UrlscannerCreateScanRequest2Country ao = UrlscannerCreateScanRequest2Country._('AO');

static const UrlscannerCreateScanRequest2Country ag = UrlscannerCreateScanRequest2Country._('AG');

static const UrlscannerCreateScanRequest2Country ar = UrlscannerCreateScanRequest2Country._('AR');

static const UrlscannerCreateScanRequest2Country am = UrlscannerCreateScanRequest2Country._('AM');

static const UrlscannerCreateScanRequest2Country au = UrlscannerCreateScanRequest2Country._('AU');

static const UrlscannerCreateScanRequest2Country at = UrlscannerCreateScanRequest2Country._('AT');

static const UrlscannerCreateScanRequest2Country az = UrlscannerCreateScanRequest2Country._('AZ');

static const UrlscannerCreateScanRequest2Country bh = UrlscannerCreateScanRequest2Country._('BH');

static const UrlscannerCreateScanRequest2Country bd = UrlscannerCreateScanRequest2Country._('BD');

static const UrlscannerCreateScanRequest2Country bb = UrlscannerCreateScanRequest2Country._('BB');

static const UrlscannerCreateScanRequest2Country by = UrlscannerCreateScanRequest2Country._('BY');

static const UrlscannerCreateScanRequest2Country be = UrlscannerCreateScanRequest2Country._('BE');

static const UrlscannerCreateScanRequest2Country bz = UrlscannerCreateScanRequest2Country._('BZ');

static const UrlscannerCreateScanRequest2Country bj = UrlscannerCreateScanRequest2Country._('BJ');

static const UrlscannerCreateScanRequest2Country bm = UrlscannerCreateScanRequest2Country._('BM');

static const UrlscannerCreateScanRequest2Country bt = UrlscannerCreateScanRequest2Country._('BT');

static const UrlscannerCreateScanRequest2Country bo = UrlscannerCreateScanRequest2Country._('BO');

static const UrlscannerCreateScanRequest2Country ba = UrlscannerCreateScanRequest2Country._('BA');

static const UrlscannerCreateScanRequest2Country bw = UrlscannerCreateScanRequest2Country._('BW');

static const UrlscannerCreateScanRequest2Country br = UrlscannerCreateScanRequest2Country._('BR');

static const UrlscannerCreateScanRequest2Country bn = UrlscannerCreateScanRequest2Country._('BN');

static const UrlscannerCreateScanRequest2Country bg = UrlscannerCreateScanRequest2Country._('BG');

static const UrlscannerCreateScanRequest2Country bf = UrlscannerCreateScanRequest2Country._('BF');

static const UrlscannerCreateScanRequest2Country bi = UrlscannerCreateScanRequest2Country._('BI');

static const UrlscannerCreateScanRequest2Country kh = UrlscannerCreateScanRequest2Country._('KH');

static const UrlscannerCreateScanRequest2Country cm = UrlscannerCreateScanRequest2Country._('CM');

static const UrlscannerCreateScanRequest2Country ca = UrlscannerCreateScanRequest2Country._('CA');

static const UrlscannerCreateScanRequest2Country cv = UrlscannerCreateScanRequest2Country._('CV');

static const UrlscannerCreateScanRequest2Country ky = UrlscannerCreateScanRequest2Country._('KY');

static const UrlscannerCreateScanRequest2Country cf = UrlscannerCreateScanRequest2Country._('CF');

static const UrlscannerCreateScanRequest2Country td = UrlscannerCreateScanRequest2Country._('TD');

static const UrlscannerCreateScanRequest2Country cl = UrlscannerCreateScanRequest2Country._('CL');

static const UrlscannerCreateScanRequest2Country cn = UrlscannerCreateScanRequest2Country._('CN');

static const UrlscannerCreateScanRequest2Country co = UrlscannerCreateScanRequest2Country._('CO');

static const UrlscannerCreateScanRequest2Country km = UrlscannerCreateScanRequest2Country._('KM');

static const UrlscannerCreateScanRequest2Country cg = UrlscannerCreateScanRequest2Country._('CG');

static const UrlscannerCreateScanRequest2Country cr = UrlscannerCreateScanRequest2Country._('CR');

static const UrlscannerCreateScanRequest2Country ci = UrlscannerCreateScanRequest2Country._('CI');

static const UrlscannerCreateScanRequest2Country hr = UrlscannerCreateScanRequest2Country._('HR');

static const UrlscannerCreateScanRequest2Country cu = UrlscannerCreateScanRequest2Country._('CU');

static const UrlscannerCreateScanRequest2Country cy = UrlscannerCreateScanRequest2Country._('CY');

static const UrlscannerCreateScanRequest2Country cz = UrlscannerCreateScanRequest2Country._('CZ');

static const UrlscannerCreateScanRequest2Country cd = UrlscannerCreateScanRequest2Country._('CD');

static const UrlscannerCreateScanRequest2Country dk = UrlscannerCreateScanRequest2Country._('DK');

static const UrlscannerCreateScanRequest2Country dj = UrlscannerCreateScanRequest2Country._('DJ');

static const UrlscannerCreateScanRequest2Country dm = UrlscannerCreateScanRequest2Country._('DM');

static const UrlscannerCreateScanRequest2Country $do = UrlscannerCreateScanRequest2Country._('DO');

static const UrlscannerCreateScanRequest2Country ec = UrlscannerCreateScanRequest2Country._('EC');

static const UrlscannerCreateScanRequest2Country eg = UrlscannerCreateScanRequest2Country._('EG');

static const UrlscannerCreateScanRequest2Country sv = UrlscannerCreateScanRequest2Country._('SV');

static const UrlscannerCreateScanRequest2Country gq = UrlscannerCreateScanRequest2Country._('GQ');

static const UrlscannerCreateScanRequest2Country er = UrlscannerCreateScanRequest2Country._('ER');

static const UrlscannerCreateScanRequest2Country ee = UrlscannerCreateScanRequest2Country._('EE');

static const UrlscannerCreateScanRequest2Country sz = UrlscannerCreateScanRequest2Country._('SZ');

static const UrlscannerCreateScanRequest2Country et = UrlscannerCreateScanRequest2Country._('ET');

static const UrlscannerCreateScanRequest2Country fj = UrlscannerCreateScanRequest2Country._('FJ');

static const UrlscannerCreateScanRequest2Country fi = UrlscannerCreateScanRequest2Country._('FI');

static const UrlscannerCreateScanRequest2Country fr = UrlscannerCreateScanRequest2Country._('FR');

static const UrlscannerCreateScanRequest2Country ga = UrlscannerCreateScanRequest2Country._('GA');

static const UrlscannerCreateScanRequest2Country ge = UrlscannerCreateScanRequest2Country._('GE');

static const UrlscannerCreateScanRequest2Country de = UrlscannerCreateScanRequest2Country._('DE');

static const UrlscannerCreateScanRequest2Country gh = UrlscannerCreateScanRequest2Country._('GH');

static const UrlscannerCreateScanRequest2Country gr = UrlscannerCreateScanRequest2Country._('GR');

static const UrlscannerCreateScanRequest2Country gl = UrlscannerCreateScanRequest2Country._('GL');

static const UrlscannerCreateScanRequest2Country gd = UrlscannerCreateScanRequest2Country._('GD');

static const UrlscannerCreateScanRequest2Country gt = UrlscannerCreateScanRequest2Country._('GT');

static const UrlscannerCreateScanRequest2Country gn = UrlscannerCreateScanRequest2Country._('GN');

static const UrlscannerCreateScanRequest2Country gw = UrlscannerCreateScanRequest2Country._('GW');

static const UrlscannerCreateScanRequest2Country gy = UrlscannerCreateScanRequest2Country._('GY');

static const UrlscannerCreateScanRequest2Country ht = UrlscannerCreateScanRequest2Country._('HT');

static const UrlscannerCreateScanRequest2Country hn = UrlscannerCreateScanRequest2Country._('HN');

static const UrlscannerCreateScanRequest2Country hu = UrlscannerCreateScanRequest2Country._('HU');

static const UrlscannerCreateScanRequest2Country $is = UrlscannerCreateScanRequest2Country._('IS');

static const UrlscannerCreateScanRequest2Country $in = UrlscannerCreateScanRequest2Country._('IN');

static const UrlscannerCreateScanRequest2Country id = UrlscannerCreateScanRequest2Country._('ID');

static const UrlscannerCreateScanRequest2Country ir = UrlscannerCreateScanRequest2Country._('IR');

static const UrlscannerCreateScanRequest2Country iq = UrlscannerCreateScanRequest2Country._('IQ');

static const UrlscannerCreateScanRequest2Country ie = UrlscannerCreateScanRequest2Country._('IE');

static const UrlscannerCreateScanRequest2Country il = UrlscannerCreateScanRequest2Country._('IL');

static const UrlscannerCreateScanRequest2Country it = UrlscannerCreateScanRequest2Country._('IT');

static const UrlscannerCreateScanRequest2Country jm = UrlscannerCreateScanRequest2Country._('JM');

static const UrlscannerCreateScanRequest2Country jp = UrlscannerCreateScanRequest2Country._('JP');

static const UrlscannerCreateScanRequest2Country jo = UrlscannerCreateScanRequest2Country._('JO');

static const UrlscannerCreateScanRequest2Country kz = UrlscannerCreateScanRequest2Country._('KZ');

static const UrlscannerCreateScanRequest2Country ke = UrlscannerCreateScanRequest2Country._('KE');

static const UrlscannerCreateScanRequest2Country ki = UrlscannerCreateScanRequest2Country._('KI');

static const UrlscannerCreateScanRequest2Country kw = UrlscannerCreateScanRequest2Country._('KW');

static const UrlscannerCreateScanRequest2Country kg = UrlscannerCreateScanRequest2Country._('KG');

static const UrlscannerCreateScanRequest2Country la = UrlscannerCreateScanRequest2Country._('LA');

static const UrlscannerCreateScanRequest2Country lv = UrlscannerCreateScanRequest2Country._('LV');

static const UrlscannerCreateScanRequest2Country lb = UrlscannerCreateScanRequest2Country._('LB');

static const UrlscannerCreateScanRequest2Country ls = UrlscannerCreateScanRequest2Country._('LS');

static const UrlscannerCreateScanRequest2Country lr = UrlscannerCreateScanRequest2Country._('LR');

static const UrlscannerCreateScanRequest2Country ly = UrlscannerCreateScanRequest2Country._('LY');

static const UrlscannerCreateScanRequest2Country li = UrlscannerCreateScanRequest2Country._('LI');

static const UrlscannerCreateScanRequest2Country lt = UrlscannerCreateScanRequest2Country._('LT');

static const UrlscannerCreateScanRequest2Country lu = UrlscannerCreateScanRequest2Country._('LU');

static const UrlscannerCreateScanRequest2Country mo = UrlscannerCreateScanRequest2Country._('MO');

static const UrlscannerCreateScanRequest2Country mg = UrlscannerCreateScanRequest2Country._('MG');

static const UrlscannerCreateScanRequest2Country mw = UrlscannerCreateScanRequest2Country._('MW');

static const UrlscannerCreateScanRequest2Country my = UrlscannerCreateScanRequest2Country._('MY');

static const UrlscannerCreateScanRequest2Country mv = UrlscannerCreateScanRequest2Country._('MV');

static const UrlscannerCreateScanRequest2Country ml = UrlscannerCreateScanRequest2Country._('ML');

static const UrlscannerCreateScanRequest2Country mr = UrlscannerCreateScanRequest2Country._('MR');

static const UrlscannerCreateScanRequest2Country mu = UrlscannerCreateScanRequest2Country._('MU');

static const UrlscannerCreateScanRequest2Country mx = UrlscannerCreateScanRequest2Country._('MX');

static const UrlscannerCreateScanRequest2Country fm = UrlscannerCreateScanRequest2Country._('FM');

static const UrlscannerCreateScanRequest2Country md = UrlscannerCreateScanRequest2Country._('MD');

static const UrlscannerCreateScanRequest2Country mc = UrlscannerCreateScanRequest2Country._('MC');

static const UrlscannerCreateScanRequest2Country mn = UrlscannerCreateScanRequest2Country._('MN');

static const UrlscannerCreateScanRequest2Country ms = UrlscannerCreateScanRequest2Country._('MS');

static const UrlscannerCreateScanRequest2Country ma = UrlscannerCreateScanRequest2Country._('MA');

static const UrlscannerCreateScanRequest2Country mz = UrlscannerCreateScanRequest2Country._('MZ');

static const UrlscannerCreateScanRequest2Country mm = UrlscannerCreateScanRequest2Country._('MM');

static const UrlscannerCreateScanRequest2Country na = UrlscannerCreateScanRequest2Country._('NA');

static const UrlscannerCreateScanRequest2Country nr = UrlscannerCreateScanRequest2Country._('NR');

static const UrlscannerCreateScanRequest2Country np = UrlscannerCreateScanRequest2Country._('NP');

static const UrlscannerCreateScanRequest2Country nl = UrlscannerCreateScanRequest2Country._('NL');

static const UrlscannerCreateScanRequest2Country nz = UrlscannerCreateScanRequest2Country._('NZ');

static const UrlscannerCreateScanRequest2Country ni = UrlscannerCreateScanRequest2Country._('NI');

static const UrlscannerCreateScanRequest2Country ne = UrlscannerCreateScanRequest2Country._('NE');

static const UrlscannerCreateScanRequest2Country ng = UrlscannerCreateScanRequest2Country._('NG');

static const UrlscannerCreateScanRequest2Country kp = UrlscannerCreateScanRequest2Country._('KP');

static const UrlscannerCreateScanRequest2Country mk = UrlscannerCreateScanRequest2Country._('MK');

static const UrlscannerCreateScanRequest2Country no = UrlscannerCreateScanRequest2Country._('NO');

static const UrlscannerCreateScanRequest2Country om = UrlscannerCreateScanRequest2Country._('OM');

static const UrlscannerCreateScanRequest2Country pk = UrlscannerCreateScanRequest2Country._('PK');

static const UrlscannerCreateScanRequest2Country ps = UrlscannerCreateScanRequest2Country._('PS');

static const UrlscannerCreateScanRequest2Country pa = UrlscannerCreateScanRequest2Country._('PA');

static const UrlscannerCreateScanRequest2Country pg = UrlscannerCreateScanRequest2Country._('PG');

static const UrlscannerCreateScanRequest2Country py = UrlscannerCreateScanRequest2Country._('PY');

static const UrlscannerCreateScanRequest2Country pe = UrlscannerCreateScanRequest2Country._('PE');

static const UrlscannerCreateScanRequest2Country ph = UrlscannerCreateScanRequest2Country._('PH');

static const UrlscannerCreateScanRequest2Country pl = UrlscannerCreateScanRequest2Country._('PL');

static const UrlscannerCreateScanRequest2Country pt = UrlscannerCreateScanRequest2Country._('PT');

static const UrlscannerCreateScanRequest2Country qa = UrlscannerCreateScanRequest2Country._('QA');

static const UrlscannerCreateScanRequest2Country ro = UrlscannerCreateScanRequest2Country._('RO');

static const UrlscannerCreateScanRequest2Country ru = UrlscannerCreateScanRequest2Country._('RU');

static const UrlscannerCreateScanRequest2Country rw = UrlscannerCreateScanRequest2Country._('RW');

static const UrlscannerCreateScanRequest2Country sh = UrlscannerCreateScanRequest2Country._('SH');

static const UrlscannerCreateScanRequest2Country kn = UrlscannerCreateScanRequest2Country._('KN');

static const UrlscannerCreateScanRequest2Country lc = UrlscannerCreateScanRequest2Country._('LC');

static const UrlscannerCreateScanRequest2Country vc = UrlscannerCreateScanRequest2Country._('VC');

static const UrlscannerCreateScanRequest2Country ws = UrlscannerCreateScanRequest2Country._('WS');

static const UrlscannerCreateScanRequest2Country sm = UrlscannerCreateScanRequest2Country._('SM');

static const UrlscannerCreateScanRequest2Country st = UrlscannerCreateScanRequest2Country._('ST');

static const UrlscannerCreateScanRequest2Country sa = UrlscannerCreateScanRequest2Country._('SA');

static const UrlscannerCreateScanRequest2Country sn = UrlscannerCreateScanRequest2Country._('SN');

static const UrlscannerCreateScanRequest2Country rs = UrlscannerCreateScanRequest2Country._('RS');

static const UrlscannerCreateScanRequest2Country sc = UrlscannerCreateScanRequest2Country._('SC');

static const UrlscannerCreateScanRequest2Country sl = UrlscannerCreateScanRequest2Country._('SL');

static const UrlscannerCreateScanRequest2Country sk = UrlscannerCreateScanRequest2Country._('SK');

static const UrlscannerCreateScanRequest2Country si = UrlscannerCreateScanRequest2Country._('SI');

static const UrlscannerCreateScanRequest2Country sb = UrlscannerCreateScanRequest2Country._('SB');

static const UrlscannerCreateScanRequest2Country so = UrlscannerCreateScanRequest2Country._('SO');

static const UrlscannerCreateScanRequest2Country za = UrlscannerCreateScanRequest2Country._('ZA');

static const UrlscannerCreateScanRequest2Country kr = UrlscannerCreateScanRequest2Country._('KR');

static const UrlscannerCreateScanRequest2Country ss = UrlscannerCreateScanRequest2Country._('SS');

static const UrlscannerCreateScanRequest2Country es = UrlscannerCreateScanRequest2Country._('ES');

static const UrlscannerCreateScanRequest2Country lk = UrlscannerCreateScanRequest2Country._('LK');

static const UrlscannerCreateScanRequest2Country sd = UrlscannerCreateScanRequest2Country._('SD');

static const UrlscannerCreateScanRequest2Country sr = UrlscannerCreateScanRequest2Country._('SR');

static const UrlscannerCreateScanRequest2Country se = UrlscannerCreateScanRequest2Country._('SE');

static const UrlscannerCreateScanRequest2Country ch = UrlscannerCreateScanRequest2Country._('CH');

static const UrlscannerCreateScanRequest2Country sy = UrlscannerCreateScanRequest2Country._('SY');

static const UrlscannerCreateScanRequest2Country tw = UrlscannerCreateScanRequest2Country._('TW');

static const UrlscannerCreateScanRequest2Country tj = UrlscannerCreateScanRequest2Country._('TJ');

static const UrlscannerCreateScanRequest2Country tz = UrlscannerCreateScanRequest2Country._('TZ');

static const UrlscannerCreateScanRequest2Country th = UrlscannerCreateScanRequest2Country._('TH');

static const UrlscannerCreateScanRequest2Country bs = UrlscannerCreateScanRequest2Country._('BS');

static const UrlscannerCreateScanRequest2Country gm = UrlscannerCreateScanRequest2Country._('GM');

static const UrlscannerCreateScanRequest2Country tl = UrlscannerCreateScanRequest2Country._('TL');

static const UrlscannerCreateScanRequest2Country tg = UrlscannerCreateScanRequest2Country._('TG');

static const UrlscannerCreateScanRequest2Country to = UrlscannerCreateScanRequest2Country._('TO');

static const UrlscannerCreateScanRequest2Country tt = UrlscannerCreateScanRequest2Country._('TT');

static const UrlscannerCreateScanRequest2Country tn = UrlscannerCreateScanRequest2Country._('TN');

static const UrlscannerCreateScanRequest2Country tr = UrlscannerCreateScanRequest2Country._('TR');

static const UrlscannerCreateScanRequest2Country tm = UrlscannerCreateScanRequest2Country._('TM');

static const UrlscannerCreateScanRequest2Country ug = UrlscannerCreateScanRequest2Country._('UG');

static const UrlscannerCreateScanRequest2Country ua = UrlscannerCreateScanRequest2Country._('UA');

static const UrlscannerCreateScanRequest2Country ae = UrlscannerCreateScanRequest2Country._('AE');

static const UrlscannerCreateScanRequest2Country gb = UrlscannerCreateScanRequest2Country._('GB');

static const UrlscannerCreateScanRequest2Country us = UrlscannerCreateScanRequest2Country._('US');

static const UrlscannerCreateScanRequest2Country uy = UrlscannerCreateScanRequest2Country._('UY');

static const UrlscannerCreateScanRequest2Country uz = UrlscannerCreateScanRequest2Country._('UZ');

static const UrlscannerCreateScanRequest2Country vu = UrlscannerCreateScanRequest2Country._('VU');

static const UrlscannerCreateScanRequest2Country ve = UrlscannerCreateScanRequest2Country._('VE');

static const UrlscannerCreateScanRequest2Country vn = UrlscannerCreateScanRequest2Country._('VN');

static const UrlscannerCreateScanRequest2Country ye = UrlscannerCreateScanRequest2Country._('YE');

static const UrlscannerCreateScanRequest2Country zm = UrlscannerCreateScanRequest2Country._('ZM');

static const UrlscannerCreateScanRequest2Country zw = UrlscannerCreateScanRequest2Country._('ZW');

static const List<UrlscannerCreateScanRequest2Country> values = [af, al, dz, ad, ao, ag, ar, am, au, at, az, bh, bd, bb, by, be, bz, bj, bm, bt, bo, ba, bw, br, bn, bg, bf, bi, kh, cm, ca, cv, ky, cf, td, cl, cn, co, km, cg, cr, ci, hr, cu, cy, cz, cd, dk, dj, dm, $do, ec, eg, sv, gq, er, ee, sz, et, fj, fi, fr, ga, ge, de, gh, gr, gl, gd, gt, gn, gw, gy, ht, hn, hu, $is, $in, id, ir, iq, ie, il, it, jm, jp, jo, kz, ke, ki, kw, kg, la, lv, lb, ls, lr, ly, li, lt, lu, mo, mg, mw, my, mv, ml, mr, mu, mx, fm, md, mc, mn, ms, ma, mz, mm, na, nr, np, nl, nz, ni, ne, ng, kp, mk, no, om, pk, ps, pa, pg, py, pe, ph, pl, pt, qa, ro, ru, rw, sh, kn, lc, vc, ws, sm, st, sa, sn, rs, sc, sl, sk, si, sb, so, za, kr, ss, es, lk, sd, sr, se, ch, sy, tw, tj, tz, th, bs, gm, tl, tg, to, tt, tn, tr, tm, ug, ua, ae, gb, us, uy, uz, vu, ve, vn, ye, zm, zw];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanRequest2Country && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanRequest2Country($value)'; } 
 }
/// The option `Public` means it will be included in listings like recent scans and search results. `Unlisted` means it will not be included in the aforementioned listings, users will need to have the scan's ID to access it. A a scan will be automatically marked as unlisted if it fails, if it contains potential PII or other sensitive material.
final class UrlscannerCreateScanRequest2Visibility {const UrlscannerCreateScanRequest2Visibility._(this.value);

factory UrlscannerCreateScanRequest2Visibility.fromJson(String json) { return switch (json) {
  'Public' => public,
  'Unlisted' => unlisted,
  _ => UrlscannerCreateScanRequest2Visibility._(json),
}; }

static const UrlscannerCreateScanRequest2Visibility public = UrlscannerCreateScanRequest2Visibility._('Public');

static const UrlscannerCreateScanRequest2Visibility unlisted = UrlscannerCreateScanRequest2Visibility._('Unlisted');

static const List<UrlscannerCreateScanRequest2Visibility> values = [public, unlisted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UrlscannerCreateScanRequest2Visibility && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'UrlscannerCreateScanRequest2Visibility($value)'; } 
 }
final class UrlscannerCreateScanRequest2 {const UrlscannerCreateScanRequest2({this.country, this.customHeaders, this.customagent, this.referer, this.screenshotsResolutions, required this.url, this.visibility = UrlscannerCreateScanRequest2Visibility.public, });

factory UrlscannerCreateScanRequest2.fromJson(Map<String, dynamic> json) { return UrlscannerCreateScanRequest2(
  country: json['country'] != null ? UrlscannerCreateScanRequest2Country.fromJson(json['country'] as String) : null,
  customHeaders: (json['customHeaders'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  customagent: json['customagent'] as String?,
  referer: json['referer'] as String?,
  screenshotsResolutions: (json['screenshotsResolutions'] as List<dynamic>?)?.map((e) => UrlscannerCreateScanRequest2ScreenshotsResolutions.fromJson(e as String)).toList(),
  url: json['url'] as String,
  visibility: json.containsKey('visibility') ? UrlscannerCreateScanRequest2Visibility.fromJson(json['visibility'] as String) : UrlscannerCreateScanRequest2Visibility.public,
); }

/// Country to geo egress from
final UrlscannerCreateScanRequest2Country? country;

/// Set custom headers.
final Map<String,String>? customHeaders;

final String? customagent;

final String? referer;

/// Take multiple screenshots targeting different device types.
final List<UrlscannerCreateScanRequest2ScreenshotsResolutions>? screenshotsResolutions;

final String url;

/// The option `Public` means it will be included in listings like recent scans and search results. `Unlisted` means it will not be included in the aforementioned listings, users will need to have the scan's ID to access it. A a scan will be automatically marked as unlisted if it fails, if it contains potential PII or other sensitive material.
final UrlscannerCreateScanRequest2Visibility visibility;

Map<String, dynamic> toJson() { return {
  if (country != null) 'country': country?.toJson(),
  'customHeaders': ?customHeaders,
  'customagent': ?customagent,
  'referer': ?referer,
  if (screenshotsResolutions != null) 'screenshotsResolutions': screenshotsResolutions?.map((e) => e.toJson()).toList(),
  'url': url,
  'visibility': visibility.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('url') && json['url'] is String; } 
UrlscannerCreateScanRequest2 copyWith({UrlscannerCreateScanRequest2Country Function()? country, Map<String, String> Function()? customHeaders, String Function()? customagent, String Function()? referer, List<UrlscannerCreateScanRequest2ScreenshotsResolutions> Function()? screenshotsResolutions, String? url, UrlscannerCreateScanRequest2Visibility Function()? visibility, }) { return UrlscannerCreateScanRequest2(
  country: country != null ? country() : this.country,
  customHeaders: customHeaders != null ? customHeaders() : this.customHeaders,
  customagent: customagent != null ? customagent() : this.customagent,
  referer: referer != null ? referer() : this.referer,
  screenshotsResolutions: screenshotsResolutions != null ? screenshotsResolutions() : this.screenshotsResolutions,
  url: url ?? this.url,
  visibility: visibility != null ? visibility() : this.visibility,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerCreateScanRequest2 &&
          country == other.country &&
          customHeaders == other.customHeaders &&
          customagent == other.customagent &&
          referer == other.referer &&
          listEquals(screenshotsResolutions, other.screenshotsResolutions) &&
          url == other.url &&
          visibility == other.visibility; } 
@override int get hashCode { return Object.hash(country, customHeaders, customagent, referer, Object.hashAll(screenshotsResolutions ?? const []), url, visibility); } 
@override String toString() { return 'UrlscannerCreateScanRequest2(country: $country, customHeaders: $customHeaders, customagent: $customagent, referer: $referer, screenshotsResolutions: $screenshotsResolutions, url: $url, visibility: $visibility)'; } 
 }
