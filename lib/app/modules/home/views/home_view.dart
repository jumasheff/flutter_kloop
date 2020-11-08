import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_kloop/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: controller.urlTextController,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Enter a kloop article URL',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0,
                    ),
                  ),
                ),
                validator: (value) =>
                    value.trim().isEmpty ? 'URL required' : null,
              ),
              SizedBox(
                height: 16,
              ),
              MaterialButton(
                color: Colors.deepOrangeAccent,
                splashColor: Colors.white,
                height: 45,
                minWidth: Get.width / 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('Fetch article'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    controller.getArticleByUrl();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
