import '../../../startup/index.coffee'

export default observer class SplashView extends Component
  constructor: (props) ->
    super props

    @state = observable
      isInitialized: false

  componentDidMount: =>
    if @props.isConnected and not @state.isInitialized
      @init()

  componentDidUpdate: =>
    if @props.isConnected and not @state.isInitialized
      @init()

  init: =>
    @state.isInitialized = true

    setTimeout =>
      Util.goToInitialScreen @props.user, @props.transporter, @props.TRANSPORTERS
    , 2000

  render: =>
    <View style={{ flex: 1 }}>
      <StatusBar />
      <View style={{ backgroundColor: '#ffffff', flex: 1, alignItems: 'center', justifyContent: 'center' }}>
        <Image
          source={require '../../../../images/splash.png'}
          style={
            width: 200
            height: 200
            marginTop: -60
          }
        />
      </View>
    </View>
