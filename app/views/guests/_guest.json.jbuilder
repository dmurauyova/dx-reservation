json.extract! guest, :id, :first_name, :last_name, :email, :status
json.url guest_url(guest, format: :json)
