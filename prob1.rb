require 'csv'

def csv_parser(file_name)
  csv_data = CSV.read(file_name, headers: true)
  csv_data.map(&:to_h)
end

file_name = "problem2_data.csv"
result = csv_parser(file_name)
puts result
