require './lib/account.rb'

  describe Account do
      let(:person) { instance_double('Person', name: 'Felix')}

   it 'check length of a pin_code' do
     number = 1234
     number_length = Math.log10(number).to_i + 1
     expect(number_length).to eq 4
   end

   it 'is expected to have balance of 0 on initialize' do
     expect(subject.balance).to eq 0
   end

   it 'is expected to have an expiry date on initialize' do
     expected_date = Date.today.next_year(5).strftime("%m/%y")
     expect(subject.exp_date).to eq expected_date
   end

   it 'is expected to have an :active account status on initialize' do
    expect(subject.account_status).to eq :active
   end

   it 'account has been deactivated' do
    subject.deactivate
    expect(subject.account_status).to eq :deactivated
   end
end
