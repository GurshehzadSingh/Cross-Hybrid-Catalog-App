import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_revision/core/store.dart';
import 'package:flutter_revision/models/cart.dart';
import 'package:flutter_revision/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
 final Item catalog;
 AddToCart({ Key key, this.catalog }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
      bool isInCart=_cart.items.contains(catalog) ?? false;

    return ElevatedButton(onPressed: (){
            if(!isInCart)
             {
              AddMutation();
              // setState(() {});
              }
             },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.shopping_cart),
                
    );
  }
}