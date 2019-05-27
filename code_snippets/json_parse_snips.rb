require 'httparty'
require 'uri'
require 'json'
require 'rest-client'

class UriNoodling

  def find_post_resources(url, id)
    #gets posttitles  by userid
    response = get_request(url)
    if response.success?
      u1p = response.select { |post| post['userId'] == id }
      u1p.map { |post| post['title'] }
    else
        raise response.response
    end
  end

  def last_post(url)
    response = get_request(url)
    if response.success?
      last = response.last
    else
      raise response.response
    end
  end

  def get_request(request_url)
    response = HTTParty.get(request_url)
    if response.success?
      response
    else
        raise response.response
    end
  end

  def create_request(request_url, post_request)
    response = HTTParty.post(request_url, post_request)
    if response.success?
      response
    else
      raise response.response
    end
  end

  def update_request(request_url, update)
    response = HTTParty.patch(request_url,update)
    if response.success?
      response
    else
      raise response.response
    end
  end

  def delete_request(request_url)
    response = HTTParty.delete(request_url)
    if response.success?
      response
    else
      raise response.response
    end
  end

end
