import 'package:flutter/material.dart';
import 'package:flutter_class/models/phone.dart';
import 'package:flutter_class/providers/phone_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
class ModifyScreen extends StatefulWidget {
  @override
  _ModifyScreenState createState() => _ModifyScreenState();
}

class _ModifyScreenState extends State<ModifyScreen> {
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var phoneState = Provider.of<PhoneModel>(context);
    if(phoneState.isEdit){
      var selectedPhone = phoneState.selectedPhone!.phone;
      _phoneController.text = selectedPhone;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Add'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TextField(
            controller: _phoneController,
            decoration: InputDecoration(
              hintText: "Please enter phone number",
              border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.phone,
          ),
          ElevatedButton(
            onPressed: (){
              var uuid = Uuid();
              var phoneState = Provider.of<PhoneModel>(context, listen: false);
              if(phoneState.isEdit){
                phoneState.editPhone(Phone(phone: _phoneController.text, id: phoneState.selectedPhone!.id));
              }else{
                phoneState.addNewPhone(Phone(phone: _phoneController.text, id: uuid.v4()));
              }
              phoneState.clearSeletedPhone();
              Navigator.of(context).pop();

            }, 
            child: Text('Save'))
        ],
      ),
    );
  }
}