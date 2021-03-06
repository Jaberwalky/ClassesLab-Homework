class CodeClanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def make_student_talk()
    return "Happy to be here!"
  end

  def get_favourite_programming_language(favourite_language)
    return "#{@name} loves #{favourite_language}"
  end

end