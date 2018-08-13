import { Picker } from 'react-native'

export default observer class BankAccountView extends Component
  constructor: (props) ->
    super props

    @state = observable
      value:
        bank: ''
        method: ''

  onChangeSelect: (value, name) =>
    @state.value[name] = value

  renderBanks: =>
    _.map @props.ACCOUNTS.BANKS, (BANK) =>
      <Picker.Item key={BANK.VALUE} label={BANK.TEXT} value={BANK.VALUE} />

  onPressNext: =>
    Util.go 'Pending'

  render: =>
    <Layout title="계좌 정보">
      <ScrollView style={{ flex: 1, padding: 20 }}>
        <Text size={18} bold color="#000000">
          충전금 환급 또는 현금 주문시{'\n'}
          운임받을 계좌를 설정하세요.
        </Text>
        <Select marginTop={15} name="bank" label="은행선택" onChange={@onChangeSelect} value={@state.value.bank}>
          { @renderBanks() }
        </Select>
        <Input placeholder="계좌번호" />
        <Input placeholder="예금주" />
        <Text size={18} bold color="#000000" marginTop={40}>현금영수증을 받는 방법을 선택해 주세요.</Text>
        <Text size={14} marginTop={10}>주문수수료에 대한 현금영수증은 비용 증빙자료로 사용 가능합니다. 수신 내역은 국세청 홈텍스에서 확인할 수 있습니다.</Text>
        <Select marginTop={15} name="method" label="영수증 받는 방법" onChange={@onChangeSelect} value={@state.value.method}>
          <Picker.Item label="수신안함" value="수신안함" />
          <Picker.Item label="휴대폰 번호" value="휴대폰 번호" />
          <Picker.Item label="현금영수증카드 번호" value="현금영수증카드 번호" />
          <Picker.Item label="사업자등록 번호" value="사업자등록 번호" />
        </Select>
        <Input placeholder="번호" />
      </ScrollView>
      <Button borderRadius={0} height={75} color="light blue" onPress={@onPressNext}>다음</Button>
    </Layout>