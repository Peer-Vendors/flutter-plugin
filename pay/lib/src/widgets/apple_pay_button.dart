part of '../../pay.dart';

class ApplePayButton extends PayButton {
  late final Widget _applePayButton;

  ApplePayButton({
    Key? key,
    required paymentConfigurationAsset,
    required onPaymentResult,
    required paymentItems,
    style,
    type,
    margin = EdgeInsets.zero,
    onPressed,
    onError,
    childOnError,
    loadingIndicator,
  }) : super(
          key,
          paymentConfigurationAsset,
          onPaymentResult,
          margin,
          onError,
          childOnError,
          loadingIndicator,
        ) {
    _applePayButton = RawApplePayButton(
        type: type,
        style: style,
        onPressed: _defaultOnPressed(onPressed, paymentItems));
  }

  List<TargetPlatform> get _supportedPlatforms => [TargetPlatform.iOS];
  Widget get _payButton => _applePayButton;
}
