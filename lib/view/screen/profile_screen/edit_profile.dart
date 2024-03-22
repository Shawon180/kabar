import 'package:flutter/material.dart';

import '../../../utill/const colors/const_color.dart';
class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController userNameController=TextEditingController();
  TextEditingController fullNameController=TextEditingController();
  TextEditingController emailAddressController=TextEditingController();
  TextEditingController phoneNumberController=TextEditingController();
  TextEditingController bioController=TextEditingController();
  TextEditingController webController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.clear,color: kSubTitleColor,),),
        title: Text(
          "Fill your Profile",
          style: kTextStyle.copyWith(color: kTitleColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: (){Navigator.pop(context);},icon: const Icon(Icons.check,color: kTitleColor,),),


        ],
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 140,
                alignment: FractionalOffset.bottomRight,
                decoration: const BoxDecoration(
                    color: kButtonColor,
                    shape: BoxShape.circle
                ),
                child: InkWell(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,right: 10),
                    child: Image.asset("assets/icon/camera.png",width: 30,height: 30,fit: BoxFit.cover,),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.name,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Username"),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: fullNameController,
                  keyboardType: TextInputType.name,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Full Name"),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller:emailAddressController,
                  keyboardType: TextInputType.name,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Email Address"),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Phone Number"),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller:bioController,
                  keyboardType: TextInputType.name,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Bio"),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 48,
                child: TextFormField(
                  controller:webController,
                  keyboardType: TextInputType.name,
                  decoration: kInputDecoration.copyWith(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Website"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
