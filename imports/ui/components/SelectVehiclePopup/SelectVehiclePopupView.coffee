import { Modal } from 'react-native'
import SelectVehicle from '../../components/SelectVehicle/SelectVehicle.coffee'

export default observer class SelectVehiclePopupView extends Component
  onPressClose: =>
    _set @props.state, @props.isVisiblePath, false

  onPressSelect: =>
    # Util.getVehicleWeight는 db schema와 상관없이 만든 SelectVehicle의 string 형식을 db schema대로 만들어준다
    # return value인 vehicleWeight는 array값으로 index 1가 weight이고 index 0이 boxType이다
    vehicleWeight = Util.getVehicleWeight @props.cState.vehicles[0], @props.TRANSPORTERS

    _set @props.state, @props.weightPath, vehicleWeight[1]
    _set @props.state, @props.boxTypePath, vehicleWeight[0]
    _set @props.state, @props.vehiclePath, @props.cState.vehicles[0]

    _set @props.state, @props.isVisiblePath, false

  render: =>
    <Modal
      animationType="slide"
      visible={_get @props.state, @props.isVisiblePath}
    >
      <Layout type="popup" onPressClose={@onPressClose} title="차량선택">
        <ScrollView>
          <SelectVehicle isSwitch state={@props.cState} vehiclesPath="vehicles" />
        </ScrollView>
        <Button isDisabled={@props.cState.vehicles.length < 1} borderRadius={0} height={75} color="light blue" onPress={@onPressSelect}>
          <View style={{ flexDirection: 'row', alignItems: 'center' }}>
            <Ionicons name="ios-checkmark" color={white} size={50} />
            <Text color={white} size={20} bold marginLeft={10}>선택완료</Text>
          </View>
        </Button>
      </Layout>
    </Modal>
