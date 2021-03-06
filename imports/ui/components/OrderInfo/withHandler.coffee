import { Linking } from 'react-native'

export default withHandler = (WrappedComponent) =>
  observer class WithHandler extends Component
    onPressPhone: (phoneNumber) =>
      Util.confirm "#{phoneNumber}로 전화 하시겠습니까?", =>
        Linking.openURL "tel:#{phoneNumber}"

    onPressUploadFreightCert: =>
      Util.go 'UploadFreightCert',
        orderId: @props.order._id

    onPressPublishCashReceipt: =>
      Util.go 'PublishCashReceipt',
        orderId: @props.order._id

    onPressAgent: =>
      Util.go 'Agent'

    render: =>
      <WrappedComponent {...@props} onPressPhone={@onPressPhone} onPressUploadFreightCert={@onPressUploadFreightCert} onPressPublishCashReceipt={@onPressPublishCashReceipt} onPressAgent={@onPressAgent} />
