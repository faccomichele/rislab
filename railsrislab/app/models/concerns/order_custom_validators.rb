module OrderCustomValidators

  class EndTimeGreaterThanStartTimeValidator < ActiveModel::Validator
    def validate(record)
      if record.end_time.to_i <= record.start_time.to_i
        record.errors[:base] << "End Time must be greater than Start Time"
      end
    end
  end

  class BookUpToTwoWeeksValidator < ActiveModel::Validator
    def validate(record)
      if record.end_time.to_i > (record.start_time.to_i + 1209600)
        record.errors[:base] << "Booking more than two weeks is not allowed by the system"
      end
    end
  end
end
