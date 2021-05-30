class PepState {
  final bool isShowLoading;
  final bool isShowEmptyData;
  final bool isShowWithoutBalance;
  final bool isShowWithoutContract;
  final bool isShowData;

  PepState({
    this.isShowLoading = false,
    this.isShowWithoutBalance = false,
    this.isShowWithoutContract = false,
    this.isShowEmptyData = false,
    this.isShowData = false,
  });
}
