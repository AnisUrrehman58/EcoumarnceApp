import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/size.dart';

import '../../../../common/widgets/appbar/appbar.dart';
class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: TAppBar(
        title: Text('Add new Address',style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Form(
          child: Column(
            children: [
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user),labelText: 'Name')),
            const SizedBox(height: TSize.spaceBtwInputField),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile),labelText: 'Phone Number')),
              const SizedBox(height: TSize.spaceBtwInputField),
              Row(
                children: [
                Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Street'))),
                const SizedBox(width: TSize.spaceBtwInputField),
                Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31),labelText: 'Postal Cord'))),


              ],
              ),
              const SizedBox(height: TSize.spaceBtwInputField),
              Row(
                children: [
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building),labelText: 'Street'))),
                  const SizedBox(width: TSize.spaceBtwInputField),
                  Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity),labelText: 'Postal Cord'))),

                ],
              ),
              const SizedBox(height: TSize.spaceBtwInputField),
              TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global),labelText: 'Country')),
              const SizedBox(height: TSize.defaultSpace),
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Save')),)
            ],
          ),
        ),
      ),
    );
  }
}
