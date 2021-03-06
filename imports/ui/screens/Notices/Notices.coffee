import NoticesView from './NoticesView.coffee'
import withHandler from './withHandler.coffee'
import { Platform } from 'react-native'

now = new Date()

getSelector = =>
  selector =
    'dateRange.startDate':
      $lte: now
    'dateRange.endDate':
      $gte: now
    $or: [
      platformAll: true
    ]
    transporterApp: true

  if Platform.OS is 'android'
    selector.$or.push
      android: true

  else if Platform.OS is 'ios'
    selector.$or.push
      ios: true

  selector

getHocs = =>
  [
    withFind('notices', getSelector)
    withHandler
  ]

export default Notices = withHocs(getHocs) NoticesView
