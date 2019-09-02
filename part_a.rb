class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def set_student_name(name)
    @name = name
  end

  def set_student_cohort(cohort)
    @cohort = cohort
  end

  def student_can_talk()
    return "I can talk!"
  end

  def favourite_coding_language(language)
    return "I love #{language}"
  end

end
