import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlmacencomentarioRecord extends FirestoreRecord {
  AlmacencomentarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "post" field.
  DocumentReference? _post;
  DocumentReference? get post => _post;
  bool hasPost() => _post != null;

  void _initializeFields() {
    _comentario = snapshotData['comentario'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _username = snapshotData['username'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _post = snapshotData['post'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('almacencomentario');

  static Stream<AlmacencomentarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlmacencomentarioRecord.fromSnapshot(s));

  static Future<AlmacencomentarioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AlmacencomentarioRecord.fromSnapshot(s));

  static AlmacencomentarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlmacencomentarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlmacencomentarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlmacencomentarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlmacencomentarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlmacencomentarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlmacencomentarioRecordData({
  String? comentario,
  String? photoUrl,
  String? username,
  DateTime? date,
  DocumentReference? post,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comentario': comentario,
      'photo_url': photoUrl,
      'username': username,
      'date': date,
      'post': post,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlmacencomentarioRecordDocumentEquality
    implements Equality<AlmacencomentarioRecord> {
  const AlmacencomentarioRecordDocumentEquality();

  @override
  bool equals(AlmacencomentarioRecord? e1, AlmacencomentarioRecord? e2) {
    return e1?.comentario == e2?.comentario &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.username == e2?.username &&
        e1?.date == e2?.date &&
        e1?.post == e2?.post;
  }

  @override
  int hash(AlmacencomentarioRecord? e) => const ListEquality()
      .hash([e?.comentario, e?.photoUrl, e?.username, e?.date, e?.post]);

  @override
  bool isValidKey(Object? o) => o is AlmacencomentarioRecord;
}
