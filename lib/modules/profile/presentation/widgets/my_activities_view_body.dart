import 'package:flutter/material.dart';
import 'package:llegar/modules/profile/domain/entities/profile_item_entity.dart';
import 'package:llegar/modules/profile/presentation/widgets/profile_item_list_tile.dart';
import 'package:llegar/shared/constants/app_icons.dart';
import 'package:llegar/shared/constants/app_routes.dart';
import 'package:llegar/shared/constants/app_sizes.dart';
import 'package:llegar/shared/utils/enums/profile_item_type.dart';
import 'package:llegar/shared/utils/functions/translate.dart';

class MyActivitiesViewBody extends StatefulWidget {
  const MyActivitiesViewBody({
    super.key,
  });

  @override
  State<MyActivitiesViewBody> createState() => _MyActivitiesViewBodyState();
}

class _MyActivitiesViewBodyState extends State<MyActivitiesViewBody> {
  late List<ProfileItemEntity> _items;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _items = [
      ProfileItemEntity(
        profileItemType: ProfileItemType.button,
        title: translate(context).myItems,
        icon: AppIcons.myItems,
        onTap: () {
          Navigator.pushNamed(
            context,
            AppRoutes.myitemsView,
            arguments: translate(context).myItems,
          );
        },
      ),
      ProfileItemEntity(
        profileItemType: ProfileItemType.button,
        title: translate(context).myRentedItems,
        icon: AppIcons.myRentedItems,
        onTap: () {
          Navigator.pushNamed(
            context,
            AppRoutes.myitemsView,
            arguments: translate(context).myRentedItems,
          );
        },
      ),
      ProfileItemEntity(
        profileItemType: ProfileItemType.button,
        title: translate(context).addItem,
        icon: AppIcons.addItem,
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.bodyHorizontalPadding(context).left,
        vertical: 8,
      ),
      child: Column(
        children: _items
            .map(
              (item) => ProfileItemListTile(profileItemEntity: item),
            )
            .toList(),
      ),
    );
  }
}
