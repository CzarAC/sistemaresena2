import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideojuegosRecord extends FirestoreRecord {
  VideojuegosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "rating" field.
  List<int>? _rating;
  List<int> get rating => _rating ?? const [];
  bool hasRating() => _rating != null;

  // "imagenes" field.
  String? _imagenes;
  String get imagenes => _imagenes ?? '';
  bool hasImagenes() => _imagenes != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _rating = getDataList(snapshotData['rating']);
    _imagenes = snapshotData['imagenes'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videojuegos');

  static Stream<VideojuegosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideojuegosRecord.fromSnapshot(s));

  static Future<VideojuegosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideojuegosRecord.fromSnapshot(s));

  static VideojuegosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VideojuegosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideojuegosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideojuegosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideojuegosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideojuegosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideojuegosRecordData({
  String? nombre,
  String? imagen,
  String? descripcion,
  String? imagenes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagen': imagen,
      'descripcion': descripcion,
      'imagenes': imagenes,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideojuegosRecordDocumentEquality implements Equality<VideojuegosRecord> {
  const VideojuegosRecordDocumentEquality();

  @override
  bool equals(VideojuegosRecord? e1, VideojuegosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.imagen == e2?.imagen &&
        e1?.descripcion == e2?.descripcion &&
        listEquality.equals(e1?.rating, e2?.rating) &&
        e1?.imagenes == e2?.imagenes;
  }

  @override
  int hash(VideojuegosRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.imagen, e?.descripcion, e?.rating, e?.imagenes]);

  @override
  bool isValidKey(Object? o) => o is VideojuegosRecord;
}
