import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Personal Info",
                style: TextStyle(fontSize: 24),
              )),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "First Name",
            ),
          ),
          SizedBox(
            height: 35,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Last Name",
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Birthday", helperText: "MM/DD/YYYY"),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Social Security", helperText: "###-##-####"),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Residence Adress",
                style: TextStyle(fontSize: 24),
              )),
          SizedBox(
            height: 35,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Address",
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "City",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(
                      child: Text("State",
                          style: TextStyle(
                            color: Color(0xFF837D7D),
                          )),
                    )
                  ],
                  onChanged: null,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "ZIP Code",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: DropdownButton(
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        "Country",
                        style: TextStyle(
                          color: Color(0xFF837D7D),
                        ),
                      ),
                    )
                  ],
                  onChanged: null,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
