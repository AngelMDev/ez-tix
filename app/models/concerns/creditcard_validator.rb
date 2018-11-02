class CreditcardValidator < ActiveModel::Validator
  def validate(record)
    pattern = /\A[0-9]{2}\/[0-9]{2}\z/
    unless record.expiration_date.blank? or !pattern.match? record.expiration_date
      exp = record.expiration_date.split("/")
      exp[1].prepend("20")
      exp.map!(&:to_i)
      if Date.valid_date?(exp[1], exp[0], 1)
        record.errors.add(:expiration_date, ": Card has expired") if Date.new(exp[1], exp[0]) < Time.current 
      else
        record.errors.add(:expiration_date, "is invalid")
      end
    end
  end
end