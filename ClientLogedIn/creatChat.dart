import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'creer_chat_model.dart';
export 'creer_chat_model.dart';

class CreerChatWidget extends StatefulWidget {
  const CreerChatWidget({
    Key? key,
    this.userdocref,
    this.chatref,
  }) : super(key: key);

  final DocumentReference? userdocref;
  final DocumentReference? chatref;

  @override
  _CreerChatWidgetState createState() => _CreerChatWidgetState();
}

class _CreerChatWidgetState extends State<CreerChatWidget> {
  late CreerChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreerChatModel());

    _model.chatNameController1 ??= TextEditingController();
    _model.chatNameController2 ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 40,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 30,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'm47x1wpv' /* Ajouter des participants pour ... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4E766F),
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'rm762fhs' /* Choisissez un ou plusieurs éta... */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 19,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 250, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '45xybpqv' /* Tremblay */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 250, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '8dmnremq' /* Greenboro */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 0, 250, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'h6giepri' /* Cooper */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '3ghs6x52' /* St Laurent */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              'ln02nru6' /* Etage 1 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'orl2fkny' /* Etage 2 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'jjf7ba4a' /* Etage 3 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ad8lpdo4' /* Etage 4 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues1 = val),
                          controller: _model.checkboxGroupValueController1 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: Color(0xFFAC9F8E),
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          initialized: _model.checkboxGroupValues1 != null,
                        ),
                      ),
                      Expanded(
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              '2ro10763' /* Etage 1 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'j5rf5ueq' /* Etage 2 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues2 = val),
                          controller: _model.checkboxGroupValueController2 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: Color(0xFFAC9F8E),
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          initialized: _model.checkboxGroupValues2 != null,
                        ),
                      ),
                      Expanded(
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              'lvnvtlc4' /* Etage 1 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'icnbja76' /* Etage 2 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bqb55q3h' /* Etage 3 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues3 = val),
                          controller: _model.checkboxGroupValueController3 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: Color(0xFFAC9F8E),
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          initialized: _model.checkboxGroupValues3 != null,
                        ),
                      ),
                      Expanded(
                        child: FlutterFlowCheckboxGroup(
                          options: [
                            FFLocalizations.of(context).getText(
                              't75z4tuv' /* Etage 1 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'nepvrdmd' /* Etage 2 */,
                            ),
                            FFLocalizations.of(context).getText(
                              '59e55287' /* Etage 3 */,
                            ),
                            FFLocalizations.of(context).getText(
                              'gf2gmmpd' /* Etage 4 */,
                            )
                          ],
                          onChanged: (val) =>
                              setState(() => _model.checkboxGroupValues4 = val),
                          controller: _model.checkboxGroupValueController4 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          activeColor: Color(0xFFAC9F8E),
                          checkColor: Colors.white,
                          checkboxBorderColor: Color(0xFF95A1AC),
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          initialized: _model.checkboxGroupValues4 != null,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '5bnij80p' /* Ou bien choisissez une unité s... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'byyh0wr2' /* Pour choisir une unité spécifi... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                          child: TextFormField(
                            controller: _model.chatNameController1,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'y6j14hji' /* Unité */,
                              ),
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodySmall,
                              hintText: FFLocalizations.of(context).getText(
                                'q0bk91fg' /* Entrez le numero d'unité ici..... */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context).bodySmall,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            maxLines: null,
                            validator: _model.chatNameController1Validator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'cmpcxued' /* Entrez le nom du chat */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: TextFormField(
                        controller: _model.chatNameController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '5iutt2x7' /* Nom du Chat */,
                          ),
                          labelStyle: FlutterFlowTheme.of(context).bodySmall,
                          hintText: FFLocalizations.of(context).getText(
                            'qs7sxh7m' /* Entrez votre nom du chat ici..... */,
                          ),
                          hintStyle: FlutterFlowTheme.of(context).bodySmall,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                        maxLines: null,
                        validator: _model.chatNameController2Validator
                            .asValidator(context),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 24),
                child: FFButtonWidget(
                  onPressed: () async {
                    var chatsRecordReference = ChatsRecord.collection.doc();
                    await chatsRecordReference.set({
                      ...createChatsRecordData(
                        lastmessage: '',
                        chatName: _model.chatNameController2.text,
                        timestamp: getCurrentTimestamp,
                      ),
                      'users': functions.getUserlist(
                          currentUserUid, currentUserDisplayName),
                      'usernames': functions.getUserlist(
                          currentUserDisplayName, currentUserDisplayName),
                    });
                    _model.newChatref = ChatsRecord.getDocumentFromData({
                      ...createChatsRecordData(
                        lastmessage: '',
                        chatName: _model.chatNameController2.text,
                        timestamp: getCurrentTimestamp,
                      ),
                      'users': functions.getUserlist(
                          currentUserUid, currentUserDisplayName),
                      'usernames': functions.getUserlist(
                          currentUserDisplayName, currentUserDisplayName),
                    }, chatsRecordReference);
                    setState(() {
                      FFAppState().activeChat = _model.newChatref!.reference;
                    });
                    context.safePop();

                    setState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'wi2m9fw1' /* Creer Chat */,
                  ),
                  options: FFButtonOptions(
                    width: 300,
                    height: 50,
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                    color: FlutterFlowTheme.of(context).black600,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 2,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
