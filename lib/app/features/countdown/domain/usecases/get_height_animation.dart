class GetHeightAnimation {
  double getHeight(
      {required double maxHeight, required int count, required double yAxis}) {
    return maxHeight - yAxis;
  }

  double getYAxis({required double maxHeight, required int duration}) {
    return (maxHeight / duration);
  }
}
