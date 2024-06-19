import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ZamowienieRecord extends FirestoreRecord {
  ZamowienieRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nrzamowienia" field.
  int? _nrzamowienia;
  int get nrzamowienia => _nrzamowienia ?? 0;
  bool hasNrzamowienia() => _nrzamowienia != null;

  // "Restauracja" field.
  DocumentReference? _restauracja;
  DocumentReference? get restauracja => _restauracja;
  bool hasRestauracja() => _restauracja != null;

  // "Godzinadodania" field.
  DateTime? _godzinadodania;
  DateTime? get godzinadodania => _godzinadodania;
  bool hasGodzinadodania() => _godzinadodania != null;

  // "Restauracjawybrala" field.
  DateTime? _restauracjawybrala;
  DateTime? get restauracjawybrala => _restauracjawybrala;
  bool hasRestauracjawybrala() => _restauracjawybrala != null;

  // "Dodatkoweinformacje" field.
  String? _dodatkoweinformacje;
  String get dodatkoweinformacje => _dodatkoweinformacje ?? '';
  bool hasDodatkoweinformacje() => _dodatkoweinformacje != null;

  // "Adres" field.
  String? _adres;
  String get adres => _adres ?? '';
  bool hasAdres() => _adres != null;

  // "Przydzielonykurier" field.
  DocumentReference? _przydzielonykurier;
  DocumentReference? get przydzielonykurier => _przydzielonykurier;
  bool hasPrzydzielonykurier() => _przydzielonykurier != null;

  // "Przyjete" field.
  bool? _przyjete;
  bool get przyjete => _przyjete ?? false;
  bool hasPrzyjete() => _przyjete != null;

  // "Dostarczone" field.
  bool? _dostarczone;
  bool get dostarczone => _dostarczone ?? false;
  bool hasDostarczone() => _dostarczone != null;

  // "Miasto" field.
  String? _miasto;
  String get miasto => _miasto ?? '';
  bool hasMiasto() => _miasto != null;

  // "zdjecie" field.
  bool? _zdjecie;
  bool get zdjecie => _zdjecie ?? false;
  bool hasZdjecie() => _zdjecie != null;

  // "Jaknaszybciej" field.
  bool? _jaknaszybciej;
  bool get jaknaszybciej => _jaknaszybciej ?? false;
  bool hasJaknaszybciej() => _jaknaszybciej != null;

  // "Restauraucjaminuty" field.
  int? _restauraucjaminuty;
  int get restauraucjaminuty => _restauraucjaminuty ?? 0;
  bool hasRestauraucjaminuty() => _restauraucjaminuty != null;

  // "nagodzine" field.
  bool? _nagodzine;
  bool get nagodzine => _nagodzine ?? false;
  bool hasNagodzine() => _nagodzine != null;

  // "godzinanagodzine" field.
  String? _godzinanagodzine;
  String get godzinanagodzine => _godzinanagodzine ?? '';
  bool hasGodzinanagodzine() => _godzinanagodzine != null;

  // "zdjecieplik" field.
  String? _zdjecieplik;
  String get zdjecieplik => _zdjecieplik ?? '';
  bool hasZdjecieplik() => _zdjecieplik != null;

  // "Jaknajszybciejkurier" field.
  bool? _jaknajszybciejkurier;
  bool get jaknajszybciejkurier => _jaknajszybciejkurier ?? false;
  bool hasJaknajszybciejkurier() => _jaknajszybciejkurier != null;

  // "Kurierminuty" field.
  int? _kurierminuty;
  int get kurierminuty => _kurierminuty ?? 0;
  bool hasKurierminuty() => _kurierminuty != null;

  // "nagodzinekurier" field.
  bool? _nagodzinekurier;
  bool get nagodzinekurier => _nagodzinekurier ?? false;
  bool hasNagodzinekurier() => _nagodzinekurier != null;

  // "godzinanagodzinekurier" field.
  String? _godzinanagodzinekurier;
  String get godzinanagodzinekurier => _godzinanagodzinekurier ?? '';
  bool hasGodzinanagodzinekurier() => _godzinanagodzinekurier != null;

  // "odrzucone" field.
  bool? _odrzucone;
  bool get odrzucone => _odrzucone ?? false;
  bool hasOdrzucone() => _odrzucone != null;

  // "datadzien" field.
  String? _datadzien;
  String get datadzien => _datadzien ?? '';
  bool hasDatadzien() => _datadzien != null;

  // "datadostarczenia" field.
  DateTime? _datadostarczenia;
  DateTime? get datadostarczenia => _datadostarczenia;
  bool hasDatadostarczenia() => _datadostarczenia != null;

  // "iloscminut" field.
  int? _iloscminut;
  int get iloscminut => _iloscminut ?? 0;
  bool hasIloscminut() => _iloscminut != null;

  void _initializeFields() {
    _nrzamowienia = castToType<int>(snapshotData['nrzamowienia']);
    _restauracja = snapshotData['Restauracja'] as DocumentReference?;
    _godzinadodania = snapshotData['Godzinadodania'] as DateTime?;
    _restauracjawybrala = snapshotData['Restauracjawybrala'] as DateTime?;
    _dodatkoweinformacje = snapshotData['Dodatkoweinformacje'] as String?;
    _adres = snapshotData['Adres'] as String?;
    _przydzielonykurier =
        snapshotData['Przydzielonykurier'] as DocumentReference?;
    _przyjete = snapshotData['Przyjete'] as bool?;
    _dostarczone = snapshotData['Dostarczone'] as bool?;
    _miasto = snapshotData['Miasto'] as String?;
    _zdjecie = snapshotData['zdjecie'] as bool?;
    _jaknaszybciej = snapshotData['Jaknaszybciej'] as bool?;
    _restauraucjaminuty = castToType<int>(snapshotData['Restauraucjaminuty']);
    _nagodzine = snapshotData['nagodzine'] as bool?;
    _godzinanagodzine = snapshotData['godzinanagodzine'] as String?;
    _zdjecieplik = snapshotData['zdjecieplik'] as String?;
    _jaknajszybciejkurier = snapshotData['Jaknajszybciejkurier'] as bool?;
    _kurierminuty = castToType<int>(snapshotData['Kurierminuty']);
    _nagodzinekurier = snapshotData['nagodzinekurier'] as bool?;
    _godzinanagodzinekurier = snapshotData['godzinanagodzinekurier'] as String?;
    _odrzucone = snapshotData['odrzucone'] as bool?;
    _datadzien = snapshotData['datadzien'] as String?;
    _datadostarczenia = snapshotData['datadostarczenia'] as DateTime?;
    _iloscminut = castToType<int>(snapshotData['iloscminut']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Zamowienie');

  static Stream<ZamowienieRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ZamowienieRecord.fromSnapshot(s));

  static Future<ZamowienieRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ZamowienieRecord.fromSnapshot(s));

  static ZamowienieRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ZamowienieRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ZamowienieRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ZamowienieRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ZamowienieRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ZamowienieRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createZamowienieRecordData({
  int? nrzamowienia,
  DocumentReference? restauracja,
  DateTime? godzinadodania,
  DateTime? restauracjawybrala,
  String? dodatkoweinformacje,
  String? adres,
  DocumentReference? przydzielonykurier,
  bool? przyjete,
  bool? dostarczone,
  String? miasto,
  bool? zdjecie,
  bool? jaknaszybciej,
  int? restauraucjaminuty,
  bool? nagodzine,
  String? godzinanagodzine,
  String? zdjecieplik,
  bool? jaknajszybciejkurier,
  int? kurierminuty,
  bool? nagodzinekurier,
  String? godzinanagodzinekurier,
  bool? odrzucone,
  String? datadzien,
  DateTime? datadostarczenia,
  int? iloscminut,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nrzamowienia': nrzamowienia,
      'Restauracja': restauracja,
      'Godzinadodania': godzinadodania,
      'Restauracjawybrala': restauracjawybrala,
      'Dodatkoweinformacje': dodatkoweinformacje,
      'Adres': adres,
      'Przydzielonykurier': przydzielonykurier,
      'Przyjete': przyjete,
      'Dostarczone': dostarczone,
      'Miasto': miasto,
      'zdjecie': zdjecie,
      'Jaknaszybciej': jaknaszybciej,
      'Restauraucjaminuty': restauraucjaminuty,
      'nagodzine': nagodzine,
      'godzinanagodzine': godzinanagodzine,
      'zdjecieplik': zdjecieplik,
      'Jaknajszybciejkurier': jaknajszybciejkurier,
      'Kurierminuty': kurierminuty,
      'nagodzinekurier': nagodzinekurier,
      'godzinanagodzinekurier': godzinanagodzinekurier,
      'odrzucone': odrzucone,
      'datadzien': datadzien,
      'datadostarczenia': datadostarczenia,
      'iloscminut': iloscminut,
    }.withoutNulls,
  );

  return firestoreData;
}

class ZamowienieRecordDocumentEquality implements Equality<ZamowienieRecord> {
  const ZamowienieRecordDocumentEquality();

  @override
  bool equals(ZamowienieRecord? e1, ZamowienieRecord? e2) {
    return e1?.nrzamowienia == e2?.nrzamowienia &&
        e1?.restauracja == e2?.restauracja &&
        e1?.godzinadodania == e2?.godzinadodania &&
        e1?.restauracjawybrala == e2?.restauracjawybrala &&
        e1?.dodatkoweinformacje == e2?.dodatkoweinformacje &&
        e1?.adres == e2?.adres &&
        e1?.przydzielonykurier == e2?.przydzielonykurier &&
        e1?.przyjete == e2?.przyjete &&
        e1?.dostarczone == e2?.dostarczone &&
        e1?.miasto == e2?.miasto &&
        e1?.zdjecie == e2?.zdjecie &&
        e1?.jaknaszybciej == e2?.jaknaszybciej &&
        e1?.restauraucjaminuty == e2?.restauraucjaminuty &&
        e1?.nagodzine == e2?.nagodzine &&
        e1?.godzinanagodzine == e2?.godzinanagodzine &&
        e1?.zdjecieplik == e2?.zdjecieplik &&
        e1?.jaknajszybciejkurier == e2?.jaknajszybciejkurier &&
        e1?.kurierminuty == e2?.kurierminuty &&
        e1?.nagodzinekurier == e2?.nagodzinekurier &&
        e1?.godzinanagodzinekurier == e2?.godzinanagodzinekurier &&
        e1?.odrzucone == e2?.odrzucone &&
        e1?.datadzien == e2?.datadzien &&
        e1?.datadostarczenia == e2?.datadostarczenia &&
        e1?.iloscminut == e2?.iloscminut;
  }

  @override
  int hash(ZamowienieRecord? e) => const ListEquality().hash([
        e?.nrzamowienia,
        e?.restauracja,
        e?.godzinadodania,
        e?.restauracjawybrala,
        e?.dodatkoweinformacje,
        e?.adres,
        e?.przydzielonykurier,
        e?.przyjete,
        e?.dostarczone,
        e?.miasto,
        e?.zdjecie,
        e?.jaknaszybciej,
        e?.restauraucjaminuty,
        e?.nagodzine,
        e?.godzinanagodzine,
        e?.zdjecieplik,
        e?.jaknajszybciejkurier,
        e?.kurierminuty,
        e?.nagodzinekurier,
        e?.godzinanagodzinekurier,
        e?.odrzucone,
        e?.datadzien,
        e?.datadostarczenia,
        e?.iloscminut
      ]);

  @override
  bool isValidKey(Object? o) => o is ZamowienieRecord;
}
