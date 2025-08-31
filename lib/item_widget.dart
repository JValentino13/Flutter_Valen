import 'package:flutter/material.dart';
import 'data.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.product
  }): super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shadowColor: Colors.blueGrey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(24)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: product.image, 
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: SizedBox(
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ), 
              height: 130,
              width: 123,
            ),
            )
            ),
          SizedBox(height: 7,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.amber, width: 1),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Text(
                'Hot!',
                style: TextStyle(
                ),
              ),
              ),
              SizedBox(height: 3,),
              Text(
                product.name,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          SizedBox(height: 2,),
          Text(
            product.price,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 2,),
          Divider(
            height: 2,
            color: Colors.grey,
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                    Icons.shopping_cart,
                    size: 11,
                  ),
                  SizedBox(height: 2,),
                  Text(
                    'Beli',
                    style: TextStyle(
                    ),
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle_outline,
                        size: 13,
                      ),
                      Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal: 4),
                        child: Text('0'),
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        size: 13,
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}