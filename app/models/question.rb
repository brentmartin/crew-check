class Question < ActiveRecord::Base
  belongs_to :assessment
  has_many :evaluations

  def average_answer_for_survey(survey)
    # get all completed surveys from survey
    cs = survey.completed_surveys
    # get all evaluations from completed surveys
    all_evals = cs.collect { |comp_s| comp_s.evaluations }
    # get only evaluations with a question_id of self.id
    evals_for_qid = all_evals.flatten.uniq.select { |e| e.question_id == self.id }
    # sum the evaluations and
    answer_sum = evals_for_qid.sum(&:answer)
    # divide by the count
    answer_count = evals_for_qid.count

    average = answer_sum / answer_count
  end
end
