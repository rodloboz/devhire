class AvailabilityValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    # Args: a model instance, a symbol of attribute and a value it has
    # You also get a hash in `options`
    # If you specified validation as `availability: true`, you wouldn't get it

    bookings = Booking.where(["developer_id =?", record.developer_id])
    date_ranges = bookings.map { |b| b.start_date..b.end_date }

    date_ranges.each do |range|
      if range.include? value
        record.errors.add(attribute, "#{options[:name] || 'Date'} not available")
      end
    end
  end
end
