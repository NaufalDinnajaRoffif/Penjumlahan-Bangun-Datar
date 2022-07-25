import 'package:flutter/material.dart';

class perhitungan extends StatefulWidget {
  const perhitungan({Key? key}) : super(key: key);

  @override
  State<perhitungan> createState() => _perhitunganState();
}

class _perhitunganState extends State<perhitungan> {

  int hasil =0;
  void cost (){
    setState(() {
      int panjang = int.parse(ctrPanjang.text);
      int lebar = int.parse(ctrLebar.text);
      hasil = panjang * lebar;
    });
  }

  TextEditingController ctrPanjang = new TextEditingController();
  TextEditingController ctrLebar = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flat Wake Calculation"),),
      body: Container(
        margin: EdgeInsets.all(10 ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextField(
              controller: ctrPanjang,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Panjang',
              ),
            ),

            SizedBox(height: 10,),
            TextField(
              controller: ctrLebar,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Lebar',
              ),
            ),
            SizedBox(height: 10,),
            Align(
              alignment: Alignment.center,
              child: Text(hasil.toString()),
            ),

            SizedBox(height: 20,),
            Center(
              child:ElevatedButton(
                  onPressed: cost,
                  child: Text("="))
            ),
          ],
        ),
      ),
    );
  }
}
