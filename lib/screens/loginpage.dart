import 'package:flutter/material.dart';
import 'package:instagram/utils/global.dart';
import 'package:instagram/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(

        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: darkBackgroundColor,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 5),
                Image(image:AssetImage("assets/images/"),
                height: 60,
                ),
                SizedBox(height:50,),
                SizedBox(
                  height:42,
                  child: TextFormField(

                    cursorColor: Colors.white,

                    style: TextStyle(fontSize: 16,color: secondaryColor),

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical:2,horizontal: 18),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                          ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText:"Phone Number, Email or Usermail",
                      hintStyle: TextStyle(fontSize: 13, color: secondaryColor),
                    ),
                  ),
                ),

                SizedBox(
                  height:42,
                  child: TextFormField(

                    cursorColor: Colors.white,

                    style: TextStyle(fontSize: 16,color: secondaryColor),

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical:2,horizontal: 18),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      hintText:"Password",
                      hintStyle: TextStyle(fontSize: 13, color: secondaryColor),
                    ),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                        flex: 5,
                        child: SizedBox(), 
                    ),
                    Text("Forgot Password ?", style: TextStyle(color:primaryColor ),
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                InkWell(
                  onTap: ()=>{
                    Navigator.of(context).pushNamed(MyRoutes.HomePageRoutes)
                  },
                  child: Container(
                    alignment: Alignment.center ,
                    height: 42,
                    width:double.infinity ,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                      color: primaryColor,
                      ),
                       child: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                  ),
                ),
                Spacer(flex: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have any account ?",style: TextStyle(color:secondaryColor ),),
                    Text(" Sign Up",style: TextStyle(color: primaryColor),)
                  ],
                ),
                Spacer(flex: 2,),

              ],
            ) ,
          ),
        ),
      )
    );
  }
}
