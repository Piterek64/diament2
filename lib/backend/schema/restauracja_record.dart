import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauracjaRecord extends FirestoreRecord {
  RestauracjaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nazwa" field.
  String? _nazwa;
  String get nazwa => _nazwa ?? '';
  bool hasNazwa() => _nazwa != null;

  void _initializeFields() {
    _nazwa = snapshotData['Nazwa'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Restauracja');

  static Stream<RestauracjaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauracjaRecord.fromSnapshot(s));

  static Future<RestauracjaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauracjaRecord.fromSnapshot(s));

  static RestauracjaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauracjaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauracjaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauracjaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauracjaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauracjaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauracjaRecordData({
  String? nazwa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nazwa': nazwa,
    }.withoutNulls,
  );

  return firestoreData;
}

class RestauracjaRecordDocumentEquality implements Equality<RestauracjaRecord> {
  const RestauracjaRecordDocumentEquality();

  @override
  bool equals(RestauracjaRecord? e1, RestauracjaRecord? e2) {
    return e1?.nazwa == e2?.nazwa;
  }

  @override
  int hash(RestauracjaRecord? e) => const ListEquality().hash([e?.nazwa]);

  @override
  bool isValidKey(Object? o) => o is RestauracjaRecord;
}
