import 'package:flutter/material.dart';
import 'bmi_result.dart';
import 'about_me.dart';



void main(){

  runApp(new MaterialApp(

    home: new Home(),

    routes: <String, WidgetBuilder>{

      '/Halsatu' : (BuildContext context) => new Home(),

      '/Haldua' : (BuildContext context) => new MyProfil(),



    },

  ));

}



class Home extends StatefulWidget {

  @override

  _HomeState createState() => new _HomeState();

}



class _HomeState extends State<Home> {



  int tinggi = 0;

  int berat = 0;

  int tahun = 0;

  int bulan = 0;

  int tanggal = 0;



  String _jk="";



  void _pilihJk(String value){

    setState(() {

      _jk = value;

    });

  }



  var _nama = new TextEditingController();



  @override

  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(

        leading: new Icon(Icons.favorite, color : Colors.redAccent),

        title: new Text('APLIKASI  BMI'),

        centerTitle: true,

        backgroundColor: Colors.lightGreen,

        actions: <Widget>[

          new IconButton(

            icon: Icon(Icons.person, color : Colors.white),

            onPressed: (){

              Navigator.pushNamed(context, '/Haldua');

            },

          )

        ],

      ),



      body: ListView(

        children: <Widget>[

          new Container(

            padding: new EdgeInsets.all(20.0),

            child: new Column(

              children: <Widget>[

                new TextField(

                  controller: _nama,

                  decoration: new InputDecoration(

                      labelText: "Nama Lengkap",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),



                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      tahun = int.parse(txt);

                    });

                  },



                  keyboardType: TextInputType.number,

                  maxLength: 4,

                  decoration: new InputDecoration(

                      labelText: "Tahun Lahir",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      bulan = int.parse(txt);

                    });

                  },



                  keyboardType: TextInputType.number,

                  maxLength: 4,

                  decoration: new InputDecoration(

                      labelText: "Bulan Lahir",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),



                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      tanggal = int.parse(txt);

                    });

                  },



                  keyboardType: TextInputType.number,

                  maxLength: 4,

                  decoration: new InputDecoration(

                      labelText: "Tanggal Lahir",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),



                new RadioListTile(

                  value: "Laki - laki",

                  groupValue: _jk,

                  title: new Text("Laki - laki"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                  subtitle: new Text("pilih jika anda laki - laki"),

                ),

                new Padding(padding: new EdgeInsets.only(top: 0.0)),

                new RadioListTile(

                  value: "Perempuan",

                  groupValue: _jk,

                  title: new Text("Perempuan"),

                  onChanged: (String value){

                    _pilihJk(value);

                  },

                  subtitle: new Text("Pilih jika anda perempuan"),

                ),



                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new Row(

                  children: <Widget>[

                    Expanded(

                      child: TextField(

                        onChanged: (txt) {

                          setState(() {

                            tinggi = int.parse(txt);

                          });

                        },



                        keyboardType: TextInputType.number,

                        maxLength: 3,

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontSize: 16,

                        ),

                        decoration: InputDecoration(

                            labelText: "Tinggi Badan",

                            suffix: Text('cm'),

                            border: new OutlineInputBorder(

                                borderRadius: new BorderRadius.circular(10.0)

                            ),

                            //filled: true,

                            hintText: 'Tinggi'),

                      ),

                    ),

                    SizedBox(

                      width: 10,

                    ),

                    Expanded(

                      child: TextField(



                        onChanged: (txt) {

                          setState(() {

                            berat = int.parse(txt);

                          });

                        },



                        keyboardType: TextInputType.number,

                        maxLength: 3,

                        textAlign: TextAlign.center,

                        style: TextStyle(

                          fontSize: 16,

                        ),

                        decoration: InputDecoration(

                            labelText: "Berat Badan",

                            suffix: Text('kg'),

                            border: new OutlineInputBorder(

                                borderRadius: new BorderRadius.circular(10.0)

                            ),

                            //filled: true,

                            hintText: 'Berat'),



                      ),

                    ),

                  ],

                ),



                new Padding(padding: new EdgeInsets.only(top: 20.0)),





                Container(

                  //height: double.infinity,

                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),

                  child: RaisedButton(

                    onPressed: () {

                      var route = new MaterialPageRoute(

                        builder: (BuildContext) =>

                        new BMIResult(nama_lengkap : _nama.text,tinggi_badan: tinggi, berat_badan: berat, tahun_lahir: tahun, bulan_lahir: bulan, tanggal_lahir: tanggal,jk: _jk),

                      );

                      Navigator.of(context).push(route);
                    },

                    padding: EdgeInsets.all(10.0),

                    color: Colors.lightBlueAccent,

                    textColor: Colors.white,

                    child: Text(

                      'Hitung BMI Anda',

                      style:

                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),



                    ),

                  ),

                ),

              ],

            ),

          ),

        ],

      ),

      bottomNavigationBar: BottomAppBar(

        //color: Colors.transparent,

        child: Container(

          height: 60,

          color: Colors.blueGrey,

          alignment: Alignment.center,

          child: Text(

            'Developed by Susi Astuti',

            style: TextStyle(

                fontSize: 20,

                fontWeight: FontWeight.w500,

                color: Colors.white),

          ),

        ),

        //elevation: 0,

      ),

    );

  }

}