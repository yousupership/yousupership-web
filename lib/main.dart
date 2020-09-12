import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'generated/l10n.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateTitle: (context) => S.of(context).youSupership,
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/home':
            return MaterialPageRoute(builder: (context) =>
                HomePage(
                  title: S.of(context).youSupership,
                  arguments: settings.arguments,
                )
            );
        }
        return null;
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key,
    @required
    this.title,
    this.arguments,
  }) : super(key: key);

  final String title;
  final Map<String, String> arguments;

  @override
  _HomePageState createState() => _HomePageState();
}

enum ShipBy {
  sea,
  seaExpress,
  airline,
  airlineExpress,
  seaForSpecial,
  seaExpressForSpecial,
  airlineForSpecial,
  airlineExpressForSpecial,
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  double _weight;
  double _height;
  double _width;
  double _depth;
  ShipBy _shipBy;

  //double _selectedPriceUnit = priceBySea;

  @override
  void initState() {
    _weight = 0;
    _height = 0;
    _width = 0;
    _depth = 0;
    _shipBy = ShipBy.airlineExpress;
    super.initState();
  }

  final volumePerKg = 6000;

  double _volume() => _width * _depth * _height;
  double _volumeWeight() => _volume() / volumePerKg;
  /// 大尺寸的货物会按抛算材积；长*宽*高/6000
  double _maxWeight() => max(_volumeWeight(), _weight);
  double _price() => _maxWeight() * priceByShipMethod(_shipBy);

  /// 我们海快普货 9元/公斤，特货10元/公斤，时效5~7天左右
  double priceByShipMethod(ShipBy shipBy) {
    if (widget.arguments?.get('pricePerKg')?.toDoubleOrNull() != null) {
      return widget.arguments?.get('pricePerKg')?.toDoubleOrNull();
    }
    switch (shipBy) {
      case ShipBy.seaForSpecial: return 9;
      break;
      case ShipBy.seaExpressForSpecial: return 10;
      break;
      case ShipBy.airlineForSpecial: return 11;
      break;
      case ShipBy.airlineExpressForSpecial: return 12;
      break;
      case ShipBy.sea: return 9;
      break;
      case ShipBy.seaExpress: return 10;
      break;
      case ShipBy.airline: return 10;
      break;
      case ShipBy.airlineExpress: return 11;
      break;
      default: return 11;
    }
  }

  String textByShipMethod(ShipBy shipBy) {
    switch (shipBy) {
      case ShipBy.seaForSpecial: return S.of(context).shipBySeaForSpecial;
      break;
      case ShipBy.seaExpressForSpecial: return S.of(context).shipBySeaExpressForSpecial;
      break;
      case ShipBy.airlineForSpecial: return S.of(context).shipByAirlineForSpecial;
      break;
      case ShipBy.airlineExpressForSpecial: return S.of(context).shipByAirlineExpressForSpecial;
      break;
      case ShipBy.sea: return S.of(context).shipBySeaForNormal;
      break;
      case ShipBy.seaExpress: return S.of(context).shipBySeaExpressForNormal;
      break;
      case ShipBy.airline: return S.of(context).shipByAirlineForNormal;
      break;
      case ShipBy.airlineExpress: return S.of(context).shipByAirlineExpressForNormal;
      break;
      default: return S.of(context).shipBySeaForNormal;
    }
  }

  MapEntry<int, int> durationByShipMethod(ShipBy shipBy) {
    switch (shipBy) {
      case ShipBy.seaForSpecial: return MapEntry(7, 14);
      break;
      case ShipBy.seaExpressForSpecial: return MapEntry(5, 7);
      break;
      case ShipBy.airlineForSpecial: return MapEntry(2, 3);
      break;
      case ShipBy.airlineExpressForSpecial: return MapEntry(1, 2);
      break;
      case ShipBy.sea: return MapEntry(7, 14);
      break;
      case ShipBy.seaExpress: return MapEntry(5, 7);
      break;
      case ShipBy.airline: return MapEntry(2, 3);
      break;
      case ShipBy.airlineExpress: return MapEntry(1, 2);
      break;
      default: return MapEntry(5, 7);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Image.asset('assets/ic_taobao.png'),
            onPressed: () {
              launch(S.of(context).yousupership_taobao_url);
            },
          ),
          IconButton(icon: Image.asset('assets/ic_line.png'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(S.of(context).yousupership_line_id),
                  content: Column(children: <Widget>[
                  IconButton(
                    iconSize: 200,
                    icon: QrImage(
                      data: S.of(context).yousupership_line_id_url,
                      version: QrVersions.auto,
                      size: 200.0,
                    ),
                    onPressed: () {
                      launch(S.of(context).yousupership_line_id_url);
                    },),
                  ],),
                  actions: <Widget>[
                    FlatButton(
                      child: Text(MaterialLocalizations.of(context).okButtonLabel),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },)
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(S.of(context).shipping,
            style: Theme.of(context).textTheme.headline,
          ),
          SizedBox(height: 10),
          SizedBox(height: 10),
          Text(S.of(context).shipBy,
            style: Theme.of(context).textTheme.title,
          ),
          SizedBox(height: 10),
          DropdownButton<ShipBy>(
            value: _shipBy,
            onChanged: (it) => setState(() => _shipBy = it),
            items: ShipBy.values.map((it) {
              return DropdownMenuItem<ShipBy>(
                child: Text(S.of(context).shipDescriptionBy(
                    textByShipMethod(it),
                    priceByShipMethod(it),
                    durationByShipMethod(it).key,
                    durationByShipMethod(it).value
                )),
                value: it,
              );
            }).toList(),
          ),
          Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: S.of(context).weightKg,
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      DecimalTextInputFormatter
                    ],
                    onChanged: (text) {
                      _weight = double.tryParse(text) ?? _weight;
                      setState(() { });
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    S.of(context).sizeCm,
                    style: Theme.of(context).textTheme.title,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Flexible(child: TextFormField(
                        decoration: InputDecoration(
                          labelText: S.of(context).length,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          DecimalTextInputFormatter
                        ],
                        onChanged: (text) {
                          _width = double.tryParse(text) ?? _width;
                          setState(() { });
                        },
                      )),
                      Flexible(child: TextFormField(
                        decoration: InputDecoration(
                          labelText: S.of(context).width,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          DecimalTextInputFormatter
                        ],
                        onChanged: (text) {
                          _depth = double.tryParse(text) ?? _depth;
                          setState(() { });
                        },
                      )),
                      Flexible(child: TextFormField(
                        decoration: InputDecoration(
                          labelText: S.of(context).height,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          DecimalTextInputFormatter
                        ],
                        onChanged: (text) {
                          _height = double.tryParse(text) ?? _height;
                          setState(() { });
                        },
                      )),
                    ],),
                  SizedBox(height: 20),
                  Text(S.of(context).shipPriceDescription)
                ],))
        ],
      )),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20), child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text(S.of(context).price),
            SizedBox(width: 10,),
            Text("CN\$${_price().ceilDouble(2)}"),
            SizedBox(width: 10,),
            Text("(${S.of(context).weightPriceDescription(weightPrice().ceilDouble(2), volumePrice().ceilDouble(2), _volumeWeight().ceilDouble(2))})"),
          ],
        )),
      ),
    );
  }

  double weightPrice() => _weight * priceByShipMethod(_shipBy);
  double volumePrice() => _volumeWeight() * priceByShipMethod(_shipBy);
}

final decimelRegExp = RegExp(r'\d+(\.(\d+)?)?');
final DecimalTextInputFormatter = WhitelistingTextInputFormatter(decimelRegExp);

extension CeilDoubleX<T extends double> on T {
  /// Ceil double to N decimal places
  ///
  /// ceilDouble(0) equivalent to ceilToDouble()
  double ceilDouble(int places) {
    final mod = pow(10, places);
    return ((this * mod).ceil().toDouble() / mod);
  }
}

extension StringX<T extends String> on T {
  double toDoubleOrNull() => double.tryParse(this);
  int toIntOrNull() => int.tryParse(this);
}

extension MapX<K, V> on Map<K, V> {
  V get(K k) {
    try {
      return this[k];
    } catch (err) {
      return null;
    }
  }
}
