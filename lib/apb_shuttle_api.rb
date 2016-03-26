# encoding: utf-8
require "apb_shuttle_api/version"

require "open-uri"
require "json"

module ApbShuttleApi
  @base_url = "http://api.apb-shuttle.info"

  def self.now
    JSON.load(open("#{@base_url}/now.json"))
  end

  def self.next(next_num = 1)
    JSON.load(open("#{@base_url}/next/#{next_num}.json"))
  end

  def self.all(limit = nil)
    get_all({limit: limit})
  end

  def self.all_apb(limit = nil)
    get_all({kind: 'apb', limit: limit})
  end

  def self.all_orange(limit = nil)
    get_all({kind: 'orange', limit: limit})
  end

  def self.info
    JSON.load(open("#{@base_url}/info.json"))
  end

  private
  def self.get_all(option = {})
    limit = option[:limit]
    limit = nil if limit.to_s.length == 0
    limit = limit.to_s if limit == true || limit == false

    limit = "/#{limit}" if !limit.nil?

    case option[:kind]
    when 'apb'
      JSON.load(open("#{@base_url}/all/apb#{limit}.json"))
    when 'orange'
      JSON.load(open("#{@base_url}/all/orange#{limit}.json"))
    else
      JSON.load(open("#{@base_url}/all#{limit}.json"))
    end
  end

  private_class_method :get_all
end
