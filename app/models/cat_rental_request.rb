class CatRentalRequest < ActiveRecord::Base
    validates :status, presence: true, inclusion: { in: %w(PENDING APPROVED DENIED),
        message: "Not a valid status" }
    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :cat_id, presence: true

    validate :free_schedule
    # validates :end_date, end_date_after_start_date: true

    # def end_date_after_start_date
    #   errors.add(:end_date, "End date cannot be before Start date") unless
    #   self.end_date > self.start_date
    # end

    def overlapping_requests
      CatRentalRequest
        .where('? >= start_date', self.end_date)
        .where('? <= end_date', self.start_date)
        .where('? IS NULL OR id != ?', self.id, self.id)
    end
      # CatRentalRequest.all.select do |request|
      #   self.start_date.between?(request.start_date, request.end_date) ||
      #   self.end_date.between?(request.start_date, request.end_date)
      # end

    def overlapping_approved_requests
      overlapping_requests.where(status: "APPROVED")
    end

    def free_schedule
      if overlapping_approved_requests.exists?
        errors[:base] << "There are overlapping requests for these dates"
      end
    end

end
