json.extract! handover, :id, :type, :reference, :lease_id, :doors, :windows, :wall_cover, :flooring, :ventilators, :air_conditioners, :light_bulbs, :faucets, :showers, :doorbell, :ceiling, :electricity, :notes, :user_id, :created_at, :updated_at
json.url handover_url(handover, format: :json)
