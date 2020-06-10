import 'package:flutter/material.dart';

class FilterDialog extends StatefulWidget {
  final Function(String,String) callback;

  FilterDialog(this.callback);
  @override
  _FilterDialogState createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {


  final fromController = TextEditingController();
  final toController = TextEditingController();

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Color(0xff36393f),
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: 280,
    decoration: BoxDecoration(
        color: Color(0xff2f3136),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    child: Column(
      children: <Widget>[

        SizedBox(
          height: 10,
        ),
        Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text("PRICE",style: TextStyle(color: Colors.white70,fontSize: 17,letterSpacing: 1),)
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff2f3136),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
          ),
        ),
        Container(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: fromController,
                style: TextStyle(color: Colors.white70),
                decoration: new InputDecoration(
                  fillColor: Color(0xff36393f),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2f3136))
                  ),
                  labelText: "From",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              )
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff2f3136),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
          ),
        ),
        Container(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                controller: toController,
                style: TextStyle(color: Colors.white70),
                decoration: new InputDecoration(
                  fillColor: Color(0xff36393f),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff2f3136))
                  ),
                  labelText: "To",
                  labelStyle: TextStyle(color: Colors.white70),
                ),
              )
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Color(0xff2f3136),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            RaisedButton(onPressed: (){
              widget.callback(fromController.text,toController.text);
              return Navigator.of(context).pop(true);
            }, child: Text('APPLY FILTER'), color: Colors.black12, textColor: Colors.white70,)
          ],
        )
      ],
    ),
  );
}
