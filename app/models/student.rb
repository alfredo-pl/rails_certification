class Student < ApplicationRecord
    has_and_belongs_to_many :courses

    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |student|
                csv << student.attributes.values_at(*column_names)
            end
        end
    end
end
