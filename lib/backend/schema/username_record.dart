import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsernameRecord extends FirestoreRecord {
  UsernameRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "username_in_use" field.
  List<String>? _usernameInUse;
  List<String> get usernameInUse => _usernameInUse ?? const [];
  bool hasUsernameInUse() => _usernameInUse != null;

  void _initializeFields() {
    _usernameInUse = getDataList(snapshotData['username_in_use']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('username');

  static Stream<UsernameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsernameRecord.fromSnapshot(s));

  static Future<UsernameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsernameRecord.fromSnapshot(s));

  static UsernameRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsernameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsernameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsernameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsernameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsernameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsernameRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class UsernameRecordDocumentEquality implements Equality<UsernameRecord> {
  const UsernameRecordDocumentEquality();

  @override
  bool equals(UsernameRecord? e1, UsernameRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usernameInUse, e2?.usernameInUse);
  }

  @override
  int hash(UsernameRecord? e) => const ListEquality().hash([e?.usernameInUse]);

  @override
  bool isValidKey(Object? o) => o is UsernameRecord;
}
