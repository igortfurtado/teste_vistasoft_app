import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';
import 'package:segundo_vista_app/app/theme/app_colors.dart';
import 'package:segundo_vista_app/app/theme/app_text_theme.dart';
import 'package:segundo_vista_app/home/controller/home.controller.dart';
import 'package:segundo_vista_app/routes/app_routes.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller;

  const HomePage(this._controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              pinned: true,
              floating: false,
              title: Text(
                "vista",
                style: TextStyle(
                  color: AppColors.textColor,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(48),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Text(
                            "${_controller.totalImoveis} imóveis",
                            style: AppTextTheme.caption,
                          ),
                        ),
                      ),
                      TextButton.icon(
                        icon: Icon(
                          Icons.filter_list,
                          color: AppColors.primaryColor,
                          size: 18.0,
                        ),
                        onPressed: () {},
                        label: Text(
                          "Categoria",
                          style: AppTextTheme.button,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
        body: Obx(
          () => LazyLoadScrollView(
            onEndOfPage: () => _controller.nextPage(),
            child: ListView.builder(
              itemCount: _controller.imoveis.length,
              itemBuilder: (context, index) {
                final imovel = _controller.imoveis[index];
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  leading: CachedNetworkImage(
                    imageUrl:
                        "http://www.vistasoft.com.br/sandbox/vista.imobi/fotos/i_demo_1949_2.jpg",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  title: Text(
                    '#' + imovel.codigo,
                    style: AppTextTheme.caption,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        imovel.categoria,
                        style: AppTextTheme.subheadBold,
                      ),
                      Text(
                        imovel.moeda +
                            ' ' +
                            (imovel.valorVenda.isEmpty
                                ? '--'
                                : NumberFormat("#,###.0#", "pt_BR")
                                    .format(double.parse(imovel.valorVenda))),
                        style: AppTextTheme.subheadBold.apply(
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_border),
                  ),
                  onTap: () {
                    Get.toNamed(AppRoutes.IMOVEL_DETAILS, arguments: {
                      AppRoutes.IMOVEL_DETAILS: imovel,
                    });
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
