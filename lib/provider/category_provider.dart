import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/model/categoryicon.dart';
import 'package:e_commerce/model/product.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Product> shirt = [];
  Product shirtData;
  List<Product> dress = [];
  Product dressData;
  List<Product> shoes = [];
  Product shoesData;
  List<Product> pant = [];
  Product pantData;
  List<Product> tie = [];
  Product tieData;
  List<CategoryIcon> dressIcon = [];
  CategoryIcon dressiconData;

  Future<void> getDressIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dramaSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("v1LYt9BDXqgXJQSGxdQb")
        .collection("drama")
        .get();
    dramaSnapShot.docs.forEach(
      (element) {
        dressiconData = CategoryIcon(image: element.data()["image"]);
        newList.add(dressiconData);
      },
    );
    dressIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getDressIcon {
    return dressIcon;
  }

  List<CategoryIcon> shirtIcon = [];
  CategoryIcon shirticonData;
  Future<void> getShirtIcon() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot historySnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("v1LYt9BDXqgXJQSGxdQb")
        .collection("history")
        .get();
    historySnapShot.docs.forEach(
      (element) {
        shirticonData = CategoryIcon(image: element.data()["image"]);
        newList.add(shirticonData);
      },
    );
    shirtIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getShirtIconData {
    return shirtIcon;
  }

  List<CategoryIcon> shoesIcon = [];
  CategoryIcon shoesiconData;
  Future<void> getshoesIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot dramaSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("v1LYt9BDXqgXJQSGxdQb")
        .collection("mystery")
        .get();
    dramaSnapShot.docs.forEach(
      (element) {
        shoesiconData = CategoryIcon(image: element.data()["image"]);
        newList.add(shoesiconData);
      },
    );
    shoesIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getShoeIcon {
    return shoesIcon;
  }

  List<CategoryIcon> pantIcon = [];
  CategoryIcon panticonData;
  Future<void> getPantIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot romanceSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("v1LYt9BDXqgXJQSGxdQb")
        .collection("romance")
        .get();
    romanceSnapShot.docs.forEach(
      (element) {
        panticonData = CategoryIcon(image: element.data()["image"]);
        newList.add(panticonData);
      },
    );
    pantIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getPantIcon {
    return pantIcon;
  }

  List<CategoryIcon> tieIcon = [];
  CategoryIcon tieIconData;
  Future<void> getTieIconData() async {
    List<CategoryIcon> newList = [];
    QuerySnapshot scifiSnapShot = await FirebaseFirestore.instance
        .collection("categoryicon")
        .doc("v1LYt9BDXqgXJQSGxdQb")
        .collection("sci-fi")
        .get();
    scifiSnapShot.docs.forEach(
      (element) {
        tieIconData = CategoryIcon(image: element.data()["image"]);
        newList.add(tieIconData);
      },
    );
    tieIcon = newList;
    notifyListeners();
  }

  List<CategoryIcon> get getTieIcon {
    return tieIcon;
  }

  Future<void> getShirtData() async {
    List<Product> newList = [];
    QuerySnapshot historySnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("cpT0Q2GpmB8pUQQiCLnH")
        .collection("history")
        .get();
    historySnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    shirt = newList;
    notifyListeners();
  }

  List<Product> get getShirtList {
    return shirt;
  }

  Future<void> getDressData() async {
    List<Product> newList = [];
    QuerySnapshot dramaSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("cpT0Q2GpmB8pUQQiCLnH")
        .collection("drama")
        .get();
    dramaSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    dress = newList;
    notifyListeners();
  }

  List<Product> get getDressList {
    return dress;
  }

  Future<void> getShoesData() async {
    List<Product> newList = [];
    QuerySnapshot mysterySnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("cpT0Q2GpmB8pUQQiCLnH")
        .collection("mystery")
        .get();
    mysterySnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    shoes = newList;
    notifyListeners();
  }

  List<Product> get getshoesList {
    return shoes;
  }

  Future<void> getPantData() async {
    List<Product> newList = [];
    QuerySnapshot romanceSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("cpT0Q2GpmB8pUQQiCLnH")
        .collection("romance")
        .get();
    romanceSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    pant = newList;
    notifyListeners();
  }

  List<Product> get getPantList {
    return pant;
  }

  Future<void> getTieData() async {
    List<Product> newList = [];
    QuerySnapshot scifiSnapShot = await FirebaseFirestore.instance
        .collection("category")
        .doc("cpT0Q2GpmB8pUQQiCLnH")
        .collection("scifi")
        .get();
    scifiSnapShot.docs.forEach(
      (element) {
        shirtData = Product(
            image: element.data()["image"],
            name: element.data()["name"],
            price: element.data()["price"]);
        newList.add(shirtData);
      },
    );
    tie = newList;
    notifyListeners();
  }

  List<Product> get getTieList {
    return tie;
  }

  List<Product> searchList;
  void getSearchList({List<Product> list}) {
    searchList = list;
  }

  List<Product> searchCategoryList(String query) {
    List<Product> searchShirt = searchList.where((element) {
      return element.name.toUpperCase().contains(query) ||
          element.name.toLowerCase().contains(query);
    }).toList();
    return searchShirt;
  }
}
