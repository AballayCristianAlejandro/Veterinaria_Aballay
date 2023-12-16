import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'list_client_model.dart';
export 'list_client_model.dart';

class ListClientWidget extends StatefulWidget {
  const ListClientWidget({super.key});

  @override
  _ListClientWidgetState createState() => _ListClientWidgetState();
}

class _ListClientWidgetState extends State<ListClientWidget>
    with TickerProviderStateMixin {
  late ListClientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListClientModel());

    _model.searchBarclienteController ??= TextEditingController();
    _model.searchBarclienteFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 1,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFFF1F4F8),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRecord> listClientUsersRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFFF1F4F8),
            appBar: AppBar(
              backgroundColor: const Color(0xFF141B5B),
              iconTheme: IconThemeData(
                  color: FlutterFlowTheme.of(context).primaryBtnText),
              automaticallyImplyLeading: true,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Text(
                    'Clientes',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Outfit',
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 700.0,
                    maxHeight: 900.0,
                  ),
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 8.0, 0.0),
                              child: TextFormField(
                                controller: _model.searchBarclienteController,
                                focusNode: _model.searchBarclienteFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.searchBarclienteController',
                                  const Duration(milliseconds: 200),
                                  () async {
                                    safeSetState(() {
                                      _model.simpleSearchResults = TextSearch(
                                        listClientUsersRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record,
                                                      [record.displayName]),
                                            )
                                            .toList(),
                                      )
                                          .search(_model
                                              .searchBarclienteController.text)
                                          .map((r) => r.object)
                                          .toList();
                                    });
                                    setState(() {
                                      FFAppState().busnadocliente = true;
                                    });
                                  },
                                ),
                                autofocus: true,
                                textCapitalization: TextCapitalization.words,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Buscar  clientes',
                                  labelStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  hintStyle:
                                      FlutterFlowTheme.of(context).labelMedium,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xA1FFFFFF),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 24.0, 20.0, 24.0),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 16.0,
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: const Color(0xFF141B5B),
                                    ),
                                validator: _model
                                    .searchBarclienteControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: FlutterFlowIconButton(
                              borderColor: const Color(0xFF141B5B),
                              borderRadius: 20.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: const Icon(
                                Icons.clear,
                                color: Color(0xFF070708),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                setState(() {
                                  _model.searchBarclienteController?.clear();
                                });
                                setState(() {
                                  FFAppState().busnadocliente = false;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(-1.0, 0),
                              child: FlutterFlowButtonTabBar(
                                useToggleButtonStyle: false,
                                isScrollable: true,
                                labelStyle:
                                    FlutterFlowTheme.of(context).titleMedium,
                                unselectedLabelStyle: const TextStyle(),
                                labelColor:
                                    FlutterFlowTheme.of(context).primary,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                backgroundColor:
                                    FlutterFlowTheme.of(context).accent1,
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderWidth: 2.0,
                                borderRadius: 12.0,
                                elevation: 0.0,
                                labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 16.0, 0.0),
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                tabs: const [
                                  Tab(
                                    text: 'Clientes',
                                  ),
                                ],
                                controller: _model.tabBarController,
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            if (FFAppState().busnadocliente)
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final clientesbuscado =
                                                        _model
                                                            .simpleSearchResults
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: clientesbuscado
                                                          .length,
                                                      itemBuilder: (context,
                                                          clientesbuscadoIndex) {
                                                        final clientesbuscadoItem =
                                                            clientesbuscado[
                                                                clientesbuscadoIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'ListPatientupdate',
                                                              queryParameters: {
                                                                'cliente':
                                                                    serializeParam(
                                                                  clientesbuscadoItem
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: ListTile(
                                                            leading: const Icon(
                                                              Icons
                                                                  .location_history,
                                                              color: Color(
                                                                  0xFF57636C),
                                                            ),
                                                            title: Text(
                                                              clientesbuscadoItem
                                                                  .displayName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: const Color(
                                                                        0xFF95A1AC),
                                                                  ),
                                                            ),
                                                            subtitle: Text(
                                                              clientesbuscadoItem
                                                                  .uid,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF95A1AC),
                                                                  ),
                                                            ),
                                                            tileColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            dense: false,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            if (!FFAppState().busnadocliente)
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final clientes =
                                                        listClientUsersRecordList
                                                            .map((e) => e)
                                                            .toList();
                                                    return ListView.builder(
                                                      padding: EdgeInsets.zero,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          clientes.length,
                                                      itemBuilder: (context,
                                                          clientesIndex) {
                                                        final clientesItem =
                                                            clientes[
                                                                clientesIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'ListPatientupdate',
                                                              queryParameters: {
                                                                'cliente':
                                                                    serializeParam(
                                                                  clientesItem
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: ListTile(
                                                            leading: const Icon(
                                                              Icons
                                                                  .location_history,
                                                              color: Color(
                                                                  0xFF57636C),
                                                            ),
                                                            title: Text(
                                                              clientesItem
                                                                  .displayName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: const Color(
                                                                        0xFF95A1AC),
                                                                  ),
                                                            ),
                                                            subtitle: Text(
                                                              clientesItem.uid,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    color: const Color(
                                                                        0xFF95A1AC),
                                                                  ),
                                                            ),
                                                            tileColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            dense: false,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
