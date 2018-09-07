import MainLayout from '../../layouts/MainLayout/MainLayout.coffee'
import TabNavigator from '../../navigators/TabNavigator/TabNavigator.coffee'
import tabNavigation from '../../../etc/tab_navigation.coffee'
import OneSignal from 'react-native-onesignal'
import Geolocation from 'react-native-geolocation-service'

export default observer class MainView extends Component
  componentDidMount: =>
    @intervalId = setInterval =>
      Geolocation.getCurrentPosition (position) =>
        Meteor.call 'transporters.update',
          _id: @props.transporter._id
        ,
          $set:
            'currentGeoLocation.longitude': position.coords.longitude
            'currentGeoLocation.latitude': position.coords.latitude
      ,
        (error) =>
          console.log error.code, error.message
      ,
          enableHighAccuracy: true
          timeout: 15000
          maximumAge: 10000
    , 10 * 1000

  componentWillUnmount: =>
    clearInterval @intervalId

  render: =>
    <MainLayout>
      <TabNavigator ref={(ref) => tabNavigation.setRef ref} />
    </MainLayout>
