class CabinetOffice
  def judge_neet?(neet_condition)
    true
  end
end

class NeetCondition
  attr_reader :age, :has_income, :married, :job_hunting
  def initialize(age: 20, has_income: false, commuting: false, married: false, job_hunting: false)
    @age = age
    @has_income = has_income
    @commuting = commuting
    @married = married
    @job_hunting = job_hunting
  end
end
