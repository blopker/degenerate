// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tipping2_aed.dart';import 'tipping2_aud.dart';import 'tipping2_cad.dart';import 'tipping2_chf.dart';import 'tipping2_czk.dart';import 'tipping2_dkk.dart';import 'tipping2_eur.dart';import 'tipping2_gbp.dart';import 'tipping2_gip.dart';import 'tipping2_hkd.dart';import 'tipping2_huf.dart';import 'tipping2_jpy.dart';import 'tipping2_mxn.dart';import 'tipping2_myr.dart';import 'tipping2_nok.dart';import 'tipping2_nzd.dart';import 'tipping2_pln.dart';import 'tipping2_ron.dart';import 'tipping2_sek.dart';import 'tipping2_sgd.dart';import 'tipping2_usd.dart';final class Tipping2 {const Tipping2({this.aed, this.aud, this.cad, this.chf, this.czk, this.dkk, this.eur, this.gbp, this.gip, this.hkd, this.huf, this.jpy, this.mxn, this.myr, this.nok, this.nzd, this.pln, this.ron, this.sek, this.sgd, this.usd, });

factory Tipping2.fromJson(Map<String, dynamic> json) { return Tipping2(
  aed: json['aed'] != null ? Tipping2Aed.fromJson(json['aed'] as Map<String, dynamic>) : null,
  aud: json['aud'] != null ? Tipping2Aud.fromJson(json['aud'] as Map<String, dynamic>) : null,
  cad: json['cad'] != null ? Tipping2Cad.fromJson(json['cad'] as Map<String, dynamic>) : null,
  chf: json['chf'] != null ? Tipping2Chf.fromJson(json['chf'] as Map<String, dynamic>) : null,
  czk: json['czk'] != null ? Tipping2Czk.fromJson(json['czk'] as Map<String, dynamic>) : null,
  dkk: json['dkk'] != null ? Tipping2Dkk.fromJson(json['dkk'] as Map<String, dynamic>) : null,
  eur: json['eur'] != null ? Tipping2Eur.fromJson(json['eur'] as Map<String, dynamic>) : null,
  gbp: json['gbp'] != null ? Tipping2Gbp.fromJson(json['gbp'] as Map<String, dynamic>) : null,
  gip: json['gip'] != null ? Tipping2Gip.fromJson(json['gip'] as Map<String, dynamic>) : null,
  hkd: json['hkd'] != null ? Tipping2Hkd.fromJson(json['hkd'] as Map<String, dynamic>) : null,
  huf: json['huf'] != null ? Tipping2Huf.fromJson(json['huf'] as Map<String, dynamic>) : null,
  jpy: json['jpy'] != null ? Tipping2Jpy.fromJson(json['jpy'] as Map<String, dynamic>) : null,
  mxn: json['mxn'] != null ? Tipping2Mxn.fromJson(json['mxn'] as Map<String, dynamic>) : null,
  myr: json['myr'] != null ? Tipping2Myr.fromJson(json['myr'] as Map<String, dynamic>) : null,
  nok: json['nok'] != null ? Tipping2Nok.fromJson(json['nok'] as Map<String, dynamic>) : null,
  nzd: json['nzd'] != null ? Tipping2Nzd.fromJson(json['nzd'] as Map<String, dynamic>) : null,
  pln: json['pln'] != null ? Tipping2Pln.fromJson(json['pln'] as Map<String, dynamic>) : null,
  ron: json['ron'] != null ? Tipping2Ron.fromJson(json['ron'] as Map<String, dynamic>) : null,
  sek: json['sek'] != null ? Tipping2Sek.fromJson(json['sek'] as Map<String, dynamic>) : null,
  sgd: json['sgd'] != null ? Tipping2Sgd.fromJson(json['sgd'] as Map<String, dynamic>) : null,
  usd: json['usd'] != null ? Tipping2Usd.fromJson(json['usd'] as Map<String, dynamic>) : null,
); }

final Tipping2Aed? aed;

final Tipping2Aud? aud;

final Tipping2Cad? cad;

final Tipping2Chf? chf;

final Tipping2Czk? czk;

final Tipping2Dkk? dkk;

final Tipping2Eur? eur;

final Tipping2Gbp? gbp;

final Tipping2Gip? gip;

final Tipping2Hkd? hkd;

final Tipping2Huf? huf;

final Tipping2Jpy? jpy;

final Tipping2Mxn? mxn;

final Tipping2Myr? myr;

final Tipping2Nok? nok;

final Tipping2Nzd? nzd;

final Tipping2Pln? pln;

final Tipping2Ron? ron;

final Tipping2Sek? sek;

final Tipping2Sgd? sgd;

final Tipping2Usd? usd;

Map<String, dynamic> toJson() { return {
  if (aed != null) 'aed': aed?.toJson(),
  if (aud != null) 'aud': aud?.toJson(),
  if (cad != null) 'cad': cad?.toJson(),
  if (chf != null) 'chf': chf?.toJson(),
  if (czk != null) 'czk': czk?.toJson(),
  if (dkk != null) 'dkk': dkk?.toJson(),
  if (eur != null) 'eur': eur?.toJson(),
  if (gbp != null) 'gbp': gbp?.toJson(),
  if (gip != null) 'gip': gip?.toJson(),
  if (hkd != null) 'hkd': hkd?.toJson(),
  if (huf != null) 'huf': huf?.toJson(),
  if (jpy != null) 'jpy': jpy?.toJson(),
  if (mxn != null) 'mxn': mxn?.toJson(),
  if (myr != null) 'myr': myr?.toJson(),
  if (nok != null) 'nok': nok?.toJson(),
  if (nzd != null) 'nzd': nzd?.toJson(),
  if (pln != null) 'pln': pln?.toJson(),
  if (ron != null) 'ron': ron?.toJson(),
  if (sek != null) 'sek': sek?.toJson(),
  if (sgd != null) 'sgd': sgd?.toJson(),
  if (usd != null) 'usd': usd?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
Tipping2 copyWith({Tipping2Aed Function()? aed, Tipping2Aud Function()? aud, Tipping2Cad Function()? cad, Tipping2Chf Function()? chf, Tipping2Czk Function()? czk, Tipping2Dkk Function()? dkk, Tipping2Eur Function()? eur, Tipping2Gbp Function()? gbp, Tipping2Gip Function()? gip, Tipping2Hkd Function()? hkd, Tipping2Huf Function()? huf, Tipping2Jpy Function()? jpy, Tipping2Mxn Function()? mxn, Tipping2Myr Function()? myr, Tipping2Nok Function()? nok, Tipping2Nzd Function()? nzd, Tipping2Pln Function()? pln, Tipping2Ron Function()? ron, Tipping2Sek Function()? sek, Tipping2Sgd Function()? sgd, Tipping2Usd Function()? usd, }) { return Tipping2(
  aed: aed != null ? aed() : this.aed,
  aud: aud != null ? aud() : this.aud,
  cad: cad != null ? cad() : this.cad,
  chf: chf != null ? chf() : this.chf,
  czk: czk != null ? czk() : this.czk,
  dkk: dkk != null ? dkk() : this.dkk,
  eur: eur != null ? eur() : this.eur,
  gbp: gbp != null ? gbp() : this.gbp,
  gip: gip != null ? gip() : this.gip,
  hkd: hkd != null ? hkd() : this.hkd,
  huf: huf != null ? huf() : this.huf,
  jpy: jpy != null ? jpy() : this.jpy,
  mxn: mxn != null ? mxn() : this.mxn,
  myr: myr != null ? myr() : this.myr,
  nok: nok != null ? nok() : this.nok,
  nzd: nzd != null ? nzd() : this.nzd,
  pln: pln != null ? pln() : this.pln,
  ron: ron != null ? ron() : this.ron,
  sek: sek != null ? sek() : this.sek,
  sgd: sgd != null ? sgd() : this.sgd,
  usd: usd != null ? usd() : this.usd,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Tipping2 &&
          aed == other.aed &&
          aud == other.aud &&
          cad == other.cad &&
          chf == other.chf &&
          czk == other.czk &&
          dkk == other.dkk &&
          eur == other.eur &&
          gbp == other.gbp &&
          gip == other.gip &&
          hkd == other.hkd &&
          huf == other.huf &&
          jpy == other.jpy &&
          mxn == other.mxn &&
          myr == other.myr &&
          nok == other.nok &&
          nzd == other.nzd &&
          pln == other.pln &&
          ron == other.ron &&
          sek == other.sek &&
          sgd == other.sgd &&
          usd == other.usd; } 
@override int get hashCode { return Object.hashAll([aed, aud, cad, chf, czk, dkk, eur, gbp, gip, hkd, huf, jpy, mxn, myr, nok, nzd, pln, ron, sek, sgd, usd]); } 
@override String toString() { return 'Tipping2(aed: $aed, aud: $aud, cad: $cad, chf: $chf, czk: $czk, dkk: $dkk, eur: $eur, gbp: $gbp, gip: $gip, hkd: $hkd, huf: $huf, jpy: $jpy, mxn: $mxn, myr: $myr, nok: $nok, nzd: $nzd, pln: $pln, ron: $ron, sek: $sek, sgd: $sgd, usd: $usd)'; } 
 }
