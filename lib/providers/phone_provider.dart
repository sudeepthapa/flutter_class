import 'package:flutter/material.dart';
import 'package:flutter_class/models/phone.dart';

class PhoneModel extends ChangeNotifier {
  String title = 'Phone App';
  Phone? selectedPhone;
  bool isEdit = false;
  List<Phone> phones = [
    Phone(id: '1', phone: '56789098765'),
    Phone(id: '2', phone: '431242213212'),
    Phone(id: '3', phone: '3212411421421'),
    Phone(id: '4', phone: '567890788969'),
  ];

  addNewPhone(Phone phone) {
    phones.add(phone);
    notifyListeners();
  }

  removePhone(String id) {
    phones.removeWhere((phone) => phone.id == id);
    notifyListeners();
  }

  setSelectedPhone(Phone phone) {
    selectedPhone = phone;
    isEdit = true;
    notifyListeners();
  }

  editPhone(Phone phone) {
    phones = phones
        .map((ph) =>
            ph.id == phone.id ? Phone(phone: phone.phone, id: phone.id) : ph)
        .toList();
    notifyListeners();
  }

  clearSeletedPhone(){
    selectedPhone = null;
    isEdit = false;
    notifyListeners();
  }
}
