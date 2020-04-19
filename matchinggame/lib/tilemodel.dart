class TileModel {
  String imageAssetPath;
  bool isSelected;
  TileModel({this.imageAssetPath, this.isSelected});
  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setIsSelected(bool getIsSelectd) {
    isSelected = getIsSelectd;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
