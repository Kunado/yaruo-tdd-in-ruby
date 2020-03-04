class CabinetOffice
  def judge_neet?(neet_condition)
    neet_condition.age > 14 && neet_condition.age < 35 && !neet_condition.has_income && !neet_condition.commuting && !neet_condition.married && !neet_condition.job_hunting
  end
end

class NeetCondition
  attr_reader :age, :has_income, :commuting, :married, :job_hunting
  def initialize(age: 20, has_income: false, commuting: false, married: false, job_hunting: false)
    @age = age
    @has_income = has_income
    @commuting = commuting
    @married = married
    @job_hunting = job_hunting
  end
end
