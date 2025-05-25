import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1TextController;
  String? Function(BuildContext, String?)? textField1TextControllerValidator;
  // State field(s) for TextField2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2TextController;
  String? Function(BuildContext, String?)? textField2TextControllerValidator;
  // State field(s) for TextField3 widget.
  FocusNode? textField3FocusNode;
  TextEditingController? textField3TextController;
  late bool textField3Visibility;
  String? Function(BuildContext, String?)? textField3TextControllerValidator;
  // State field(s) for TextField4 widget.
  FocusNode? textField4FocusNode;
  TextEditingController? textField4TextController;
  late bool textField4Visibility;
  String? Function(BuildContext, String?)? textField4TextControllerValidator;

  @override
  void initState(BuildContext context) {
    textField3Visibility = false;
    textField4Visibility = false;
  }

  @override
  void dispose() {
    textField1FocusNode?.dispose();
    textField1TextController?.dispose();

    textField2FocusNode?.dispose();
    textField2TextController?.dispose();

    textField3FocusNode?.dispose();
    textField3TextController?.dispose();

    textField4FocusNode?.dispose();
    textField4TextController?.dispose();
  }
}
