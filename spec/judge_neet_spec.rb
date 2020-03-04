require_relative '../lib/judge_neet'

describe 'the cabinet office can judge a NEET' do
  let(:cabinet_office) { CabinetOffice.new }
  context 'with a person who is between 15 and 35 years old' do
    neet_condition = NeetCondition.new(
      age: 23,
      has_income: false,
      commuting: false,
      married: false,
      job_hunting: false
    )
    it { expect(cabinet_office).to be_judge_neet neet_condition }
  end

  context 'with person older than 34 years' do
    neet_condition = NeetCondition.new(
      age: 35,
      has_income: false,
      commuting: false,
      married: false,
      job_hunting: false
    )
    it { expect(cabinet_office).to_not be_judge_neet neet_condition }
  end
end
