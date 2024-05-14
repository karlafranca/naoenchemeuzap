import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  final celularMask = MaskTextInputFormatter(mask: '(##) #####-####');
  String? Function(BuildContext, String?)? celularTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    celularFocusNode?.dispose();
    celularTextController?.dispose();
  }
}
