json.array!(@cashadvances) do |cashadvance|
  json.extract! cashadvance, :id, :date_from, :date_to, :client, :branch, :bus_unit, :status
  json.url cashadvance_url(cashadvance, format: :json)
end
