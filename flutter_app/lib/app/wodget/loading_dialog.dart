import 'package:flutter/material.dart';
class LoadingDialog extends StatefulWidget{

   String text;
   bool outsideDismiss;
   Function dismissCallback;
   Future<dynamic> requestCallback;

   LoadingDialog({Key key,this.text = 'loading...',this.outsideDismiss = true,this.dismissCallback,this.requestCallback}):super(key:key);

   @override
  _LoadingDialogState createState() =>_LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog>{

  __dismissDialog(){
    if(widget.dismissCallback != null){
      widget.dismissCallback();
    }
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
    if(widget.requestCallback != null){
      widget.requestCallback.then((_){
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: 12.0,
            height: 12.0,
          child: Container(
            decoration: ShapeDecoration(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))
            ),color: Colors.red),
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ) ,
                Text(
                  widget.text,
                  style: TextStyle(fontSize: 12.0),
                )
              ],
          ),),
        ),
      ),
    );
  }

}