import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../controller/formelementController.dart';
import '../utils/styles.dart';

import '../globals.dart';


FEC cont = Get.put(FEC());
textfield(int typ,String skey){
  return Container(
      width: 80,
      margin: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(10),
      ),
      child:TextFormField(
        maxLines: 1,
        decoration: new InputDecoration(
          border: new OutlineInputBorder(
              borderSide: new BorderSide(color: Colors.grey)
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: darkmode?Colors.grey[400]:Colors.black, width: 1.0),
          ),
          isDense: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blue, width: 1.0),
          ),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          //hintText: typ==1?"Theory":typ==2?"Internal":"Practical"
        ),
        onChanged: (val){
          cont.FDATA[skey] = val.trim();
        },
        inputFormatters: typ==1?[WhitelistingTextInputFormatter.digitsOnly]:[],
        keyboardType: typ==1?TextInputType.number:TextInputType.text,
        style: new TextStyle(
          color: Colors.black,
          fontFamily: "Poppins",
        ),
      ));
}

fitem(String title, Widget w)=>
    Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child:Row(children: [
          Expanded(flex: 4,child: Text("$title",
            style: TextStyle(color: darkmode?Colors.white:Colors.black),),),
          Expanded(flex: 6,child: w,)
        ],));
fitemcheck(String title, Widget w)=>
    Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child:Row(children: [
          Expanded(flex: 4,child: Text(" $title",
            style: TextStyle(color: darkmode?Colors.white:Colors.black),),),
          Expanded(flex: 6,child: Container(child: w,
            alignment: Alignment.centerLeft,
            //color: Colors.amber,
          ))
        ],));
//
datepicker(String key,BuildContext context)=>
    InkWell(child:
    Container(
      decoration: rounded(
          darkmode?Colors.grey[800]:Colors.grey[200], 10),
      padding: EdgeInsets.all(6),
      child: Row(children: [
        Text(cont.FDATA[key]!=null?cont.FDATA[key]:"Pick date",
            style: TextStyle(color: darkmode?Colors.white:Colors.black)),
        Expanded(child: Container(),),
        Icon(Icons.date_range_outlined, color: darkmode?Colors.white:Colors.black,)
      ],),
    ),
        onTap: (){

          _selectDate(key, context);
        });
_selectDate(String key,BuildContext context) async {
  cont.FDATA[key] = DateTime.now().toString();
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(), // Refer step 1
    firstDate: DateTime(1900),
    lastDate: DateTime(2025),
  );
  if (picked != null && picked != cont.FDATA[key]){
   /* state.setState(() {
      FDATA[key] = picked.toString().split(" ")[0];
    });*/
    FocusScope.of(context).requestFocus(new FocusNode());
  }
  else{
    cont.FDATA[key] = DateTime.now().toString().split(" ")[0];
    FocusScope.of(context).requestFocus(new FocusNode());
  }

}
datetimepicker(String key,BuildContext context, State state)=>
    InkWell(child:
    Container(
      decoration: rounded(
          darkmode?Colors.grey[800]:Colors.grey[200], 10),
      padding: EdgeInsets.all(6),
      child: Row(children: [
        Text(
            cont.FDATA[key]!=null?"${cont.FDATA[key]}":"Pick date",
            style: TextStyle(color: darkmode?Colors.white:Colors.black)),
        Expanded(child: Container(),),
        Icon(Icons.date_range_outlined, color: darkmode?Colors.white:Colors.black,)
      ],),
    ),
        onTap: (){

          _selectDateTime(key, context, state);
        });
_selectDateTime(String key,BuildContext context, State state) async {

  TimeOfDay t = TimeOfDay.now();
  //
  DateTime dt = DateTime.now();
  final DateTime picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(), // Refer step 1
    firstDate: DateTime(1900),
    lastDate: DateTime(2025),
  );
  TimeOfDay too = await showTimePicker(
      context: context,
      initialTime: t
  );
  if (picked != null && picked != cont.FDATA[key]){
    state.setState(() {
      //x["date"] = picked.toString().split(" ")[0];
      dt = picked;
    });
    FocusScope.of(context).requestFocus(new FocusNode());
  }
  else{
    //x["date"] = DateTime.now().toString().split(" ")[0];
    FocusScope.of(context).requestFocus(new FocusNode());
  }
  //finalize
  if(t != null)
    state.setState(() {
      //x["time"] = t;
      //FDATA[key] = x;
      DateTime finaldate = new DateTime(dt.year, dt.month, dt.day,
          too.hour, too.minute);
      cont.FDATA[key] = finaldate.toString();
      print(cont.FDATA);
    });

}
drop(String key, List x,BuildContext context) {
  //String label = txt.replaceAll("_", " ");
  return Container(
      decoration: rounded(Colors.grey[200], 10),
      padding: EdgeInsets.all(5),
      child:DropdownButtonHideUnderline(
          child: DropdownButton(
            iconEnabledColor: Colors.black,
            isDense: true,
            hint: Text(cont.FDATA[key]!=null?"${cont.FDATA[key]}":'Select value', style: TextStyle(color: Colors.black),),
            items: x.map((value) {
              return new DropdownMenuItem<dynamic>(
                value: value,
                child: new Text("${value}"),
              );
            }).toList(),
            onChanged: (val) {
              cont.FDATA[key] = val;
              FocusScope.of(context).requestFocus(new FocusNode());
            },
          )
      )
  );
}
Widget checkbox(String name)=>
    Obx(()=>Checkbox(
      value: cont.FDATA[name]==null?false:cont.FDATA[name],
      onChanged: (val){
        cont.FDATA[name]=val;
      },));
Widget radiogroup(String name,List li)=>
    new Obx(()=>Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text("Select $name:"),
        Row(children: li.map((val) {
          //final name = subFund.parameters["subFundName"];
          return Row(children: [
            new Radio(
              value: val,
              groupValue: cont.FDATA[name],
              onChanged: (val){cont.forgroupchanged(name,val);},
            ),
            new Text(
              '$val',
              style: new TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],);
        }).toList(),),


      ],
    )));