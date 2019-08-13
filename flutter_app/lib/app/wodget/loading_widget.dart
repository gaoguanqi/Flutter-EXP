import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingWidget {
  static Widget getLoading(final String msg) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: BoxDecoration(color: Colors.red),
      child: Container(
        decoration: BoxDecoration(color: Colors.blueAccent),
        width: 70.0,
        height: 70.0,
        alignment: AlignmentDirectional.center,
        child: SizedBox(
          height: 25.0,
          width: 25.0,
          child: CupertinoActivityIndicator(
            radius: 15.0,
          ),
        ),
      ),
    );
  }

  static Widget containerLoadingBody(final Widget body,
      {bool loading = true, final String msg}) {
    return Stack(
      children: <Widget>[
        body,
        Offstage(
          child: getLoading(msg),
          offstage: !loading,
        )
      ],
    );
  }
}
