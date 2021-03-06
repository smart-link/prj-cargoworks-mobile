import RecruitmentsView from './RecruitmentsView.coffee'
import withHandler from './withHandler.coffee'
import withProps from './withProps.coffee'

getRecruitmentsOption = =>
  sort:
    createdAt: -1

getConsignorsSelector = (props) =>
  consignorIds = props.recruitments.map (recruitment) =>
    recruitment.consignorId

  _id:
    $in: consignorIds

getTransportersSelector = (props) =>
  _id: props.user.profile.transporterId

getHocs = =>
  [
    withUser()
    withFindOne('transporters', getTransportersSelector)
    withConstant('recruitments')
    withConstant('transporters')
    withFind('recruitments', =>, getRecruitmentsOption)
    withFind('consignors', getConsignorsSelector)
    withProps
    withHandler
  ]

export default Recruitments = withHocs(getHocs) RecruitmentsView
