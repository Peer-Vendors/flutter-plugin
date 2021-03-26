part of '../../pay.dart';

class GooglePayButton extends PayButton {
  late final Widget _googlePayButton;

  GooglePayButton({
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
    _googlePayButton = RawGooglePayButton(
        type: type,
        style: style,
        onPressed: _defaultOnPressed(onPressed, paymentItems));
  }

  List<TargetPlatform> get _supportedPlatforms => [TargetPlatform.android];
  Widget get _payButton => _googlePayButton;
}
