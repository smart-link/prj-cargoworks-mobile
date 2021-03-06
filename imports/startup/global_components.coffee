import { View, Image, ImageBackground, TouchableWithoutFeedback, Picker } from 'react-native'
import Toggles from 'slap-react-native-toggles'
import Toggle from 'slap-react-native-toggle'
import TextArea from 'slap-react-native-text-area'
import Switch from '../ui/components/Switch/Switch.coffee'
import Swiper from 'slap-react-native-swiper'
import Spinner from 'slap-react-native-spinner'
import MagnetView from 'slap-react-native-magnet-view'
import Select from 'slap-react-native-select'
import Roles from 'slap-react-native-roles'
import ListItem from '../ui/components/ListItem/ListItem.coffee'
import ImageFrame from 'slap-react-native-image-frame'
import Calendar from 'slap-react-native-calendar'
import Accordion from 'slap-react-native-accordion'
import StatusBar from '../ui/components/StatusBar/StatusBar.coffee'
import Touchable from 'slap-react-native-touchable'
import Text from '../ui/components/Text/Text.coffee'
import Button from '../ui/components/Button/Button.coffee'
import Modal from '../ui/components/Modal/Modal.coffee'
import Error from '../ui/components/Error/Error.coffee'
import Input from '../ui/components/Input/Input.coffee'
import ImageUploader from '../ui/components/ImageUploader/ImageUploader.coffee'
import CheckboxControlled from '../ui/components/CheckboxControlled/CheckboxControlled.coffee'
import Checkbox from '../ui/components/Checkbox/Checkbox.coffee'
import Badge from 'slap-react-native-badge'
import Layout from '../ui/layouts/Layout/Layout.coffee'
import withUser from '../hocs/data/withUser.coffee'
import withConnection from '../hocs/etc/withConnection.coffee'
import withFindOne from '../hocs/data/withFindOne.coffee'
import withFind from '../hocs/data/withFind.coffee'
import withHocs from '../hocs/etc/withHocs.coffee'
import withState from '../hocs/etc/withState.coffee'
import withValidation from '../hocs/etc/withValidation.coffee'
import withRouteParam from '../hocs/etc/withRouteParam.coffee'
import withConstant from '../hocs/etc/withConstant.coffee'
import withDefaultObject from '../hocs/etc/withDefaultObject.coffee'
import withSelectDateModal from '../hocs/etc/withSelectDateModal.coffee'
import { CachedImage } from 'react-native-cached-image'
import SimpleLineIcons from 'react-native-vector-icons/SimpleLineIcons'
import Ionicons from 'react-native-vector-icons/Ionicons'
import EvilIcons from 'react-native-vector-icons/EvilIcons'
import Feather from 'react-native-vector-icons/Feather'
import Util from '../etc/Util.coffee'
import ScrollView from '../ui/components/ScrollView/ScrollView.coffee'

global.View = View
global.Image = Image
global.ImageBackground = ImageBackground
global.TouchableWithoutFeedback = TouchableWithoutFeedback
global.Picker = Picker
global.Toggles = Toggles
global.Toggle = Toggle
global.TextArea = TextArea
global.Switch = Switch
global.Swiper = Swiper
global.Spinner = Spinner
global.MagnetView = MagnetView
global.Select = Select
global.Roles = Roles
global.ListItem = ListItem
global.ImageFrame = ImageFrame
global.Calendar = Calendar
global.Accordion = Accordion
global.StatusBar = StatusBar
global.Touchable = Touchable
global.Text = Text
global.Button = Button
global.Modal = Modal
global.Error = Error
global.Input = Input
global.ImageUploader = ImageUploader
global.CheckboxControlled = CheckboxControlled
global.Checkbox = Checkbox
global.Badge = Badge
global.Layout = Layout
global.withUser = withUser
global.withConnection = withConnection
global.withFindOne = withFindOne
global.withFind = withFind
global.withHocs = withHocs
global.withState = withState
global.withValidation = withValidation
global.withRouteParam = withRouteParam
global.withConstant = withConstant
global.withDefaultObject = withDefaultObject
global.withSelectDateModal = withSelectDateModal
global.CachedImage = CachedImage
global.SimpleLineIcons = SimpleLineIcons
global.Ionicons = Ionicons
global.EvilIcons = EvilIcons
global.Feather = Feather
global.Util = Util
global._get = Util.get
global._set = Util.set
global.push = Util.push
global.unshift = Util.unshift
global.splice = Util.splice
global.ScrollView = ScrollView
