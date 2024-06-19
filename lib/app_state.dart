import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _tymczasowyczas = 0;
  int get tymczasowyczas => _tymczasowyczas;
  set tymczasowyczas(int value) {
    _tymczasowyczas = value;
  }

  bool _nagodzine = false;
  bool get nagodzine => _nagodzine;
  set nagodzine(bool value) {
    _nagodzine = value;
  }

  String _godzina = '';
  String get godzina => _godzina;
  set godzina(String value) {
    _godzina = value;
  }

  String _tymczasowezdj = '';
  String get tymczasowezdj => _tymczasowezdj;
  set tymczasowezdj(String value) {
    _tymczasowezdj = value;
  }

  DocumentReference? _tymczasowezlecenie;
  DocumentReference? get tymczasowezlecenie => _tymczasowezlecenie;
  set tymczasowezlecenie(DocumentReference? value) {
    _tymczasowezlecenie = value;
  }

  List<DocumentReference> _uzytkownicydopowiadomienia = [];
  List<DocumentReference> get uzytkownicydopowiadomienia =>
      _uzytkownicydopowiadomienia;
  set uzytkownicydopowiadomienia(List<DocumentReference> value) {
    _uzytkownicydopowiadomienia = value;
  }

  void addToUzytkownicydopowiadomienia(DocumentReference value) {
    uzytkownicydopowiadomienia.add(value);
  }

  void removeFromUzytkownicydopowiadomienia(DocumentReference value) {
    uzytkownicydopowiadomienia.remove(value);
  }

  void removeAtIndexFromUzytkownicydopowiadomienia(int index) {
    uzytkownicydopowiadomienia.removeAt(index);
  }

  void updateUzytkownicydopowiadomieniaAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    uzytkownicydopowiadomienia[index] =
        updateFn(_uzytkownicydopowiadomienia[index]);
  }

  void insertAtIndexInUzytkownicydopowiadomienia(
      int index, DocumentReference value) {
    uzytkownicydopowiadomienia.insert(index, value);
  }

  bool _firstvisit = true;
  bool get firstvisit => _firstvisit;
  set firstvisit(bool value) {
    _firstvisit = value;
  }

  String _Dzwiek1 =
      'https://firebasestorage.googleapis.com/v0/b/diamentdelivery-s9l4hs.appspot.com/o/users%2FKY4jVH9UW5M2MouEj3gJwB46wHj1%2Fuploads%2F1718579736433000.mp3?alt=media&token=0b511d59-9bd8-414e-b749-d472243a0e26';
  String get Dzwiek1 => _Dzwiek1;
  set Dzwiek1(String value) {
    _Dzwiek1 = value;
  }

  String _nazwadzwieku = '';
  String get nazwadzwieku => _nazwadzwieku;
  set nazwadzwieku(String value) {
    _nazwadzwieku = value;
  }

  bool _dzisiaj = true;
  bool get dzisiaj => _dzisiaj;
  set dzisiaj(bool value) {
    _dzisiaj = value;
  }

  bool _wczoraj = false;
  bool get wczoraj => _wczoraj;
  set wczoraj(bool value) {
    _wczoraj = value;
  }

  List<DocumentReference> _tymlista = [];
  List<DocumentReference> get tymlista => _tymlista;
  set tymlista(List<DocumentReference> value) {
    _tymlista = value;
  }

  void addToTymlista(DocumentReference value) {
    tymlista.add(value);
  }

  void removeFromTymlista(DocumentReference value) {
    tymlista.remove(value);
  }

  void removeAtIndexFromTymlista(int index) {
    tymlista.removeAt(index);
  }

  void updateTymlistaAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    tymlista[index] = updateFn(_tymlista[index]);
  }

  void insertAtIndexInTymlista(int index, DocumentReference value) {
    tymlista.insert(index, value);
  }

  String _typfiltradziswczoraj = '';
  String get typfiltradziswczoraj => _typfiltradziswczoraj;
  set typfiltradziswczoraj(String value) {
    _typfiltradziswczoraj = value;
  }

  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? value) {
    _startDate = value;
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? value) {
    _endDate = value;
  }

  bool _ZAKRESDAT = false;
  bool get ZAKRESDAT => _ZAKRESDAT;
  set ZAKRESDAT(bool value) {
    _ZAKRESDAT = value;
  }

  bool _POJDATA = true;
  bool get POJDATA => _POJDATA;
  set POJDATA(bool value) {
    _POJDATA = value;
  }

  DateTime? _tymDate;
  DateTime? get tymDate => _tymDate;
  set tymDate(DateTime? value) {
    _tymDate = value;
  }

  DocumentReference? _tymkurier;
  DocumentReference? get tymkurier => _tymkurier;
  set tymkurier(DocumentReference? value) {
    _tymkurier = value;
  }
}
