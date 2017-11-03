class PersonService
  HOST = 'http://localhost:3003/api/people/'

  def initialize(enrollment)
    @person = enrollment.person
  end

  def fetch_person!
    req_params = @person.attributes.symbolize_keys.slice(:name, :birth, :registry_number).to_json
    response = RestClient.post(HOST, req_params)
    @person.update_attributes(integration_id: JSON.parse(response.body)['_id'])
  end

  def update_person!
    req_params = @person.attributes.symbolize_keys.slice(:name, :birth).to_json
    RestClient.put(HOST + @person.registry_number, req_params)
  end
end
