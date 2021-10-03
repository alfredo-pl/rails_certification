class Student < ApplicationRecord

    has_and_belongs_to_many :courses
    validates :checkcode, uniqueness: true
    def self.to_csv
        CSV.generate do |csv|
            csv << column_names
            all.each do |student|
                csv << student.attributes.values_at(*column_names)
            end
        end
    end

    def name_region
      regiones =  ["N/R","Arica y Parinacota","Tarapacá","Antofagasta","Atacama",
      "Coquimbo","Valparaíso","Región Metropolitana de Santiago",
      "Región del Libertador Gra. Bernardo O’Higgins","Región del Maule","Región de Ñuble",
      "Región del Biobío","Región de la Araucanía", "Región de Los Ríos","Región de Los Lagos",
      "Región Aisén del Gral. Carlos Ibáñez del Campo","Región de Magallanes y de la Antártica Chilena"] 

      nombre = regiones[region.to_i]
    end

    def self.generate_number_code(size = 10)
        charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
        (0...size).map{ charset.to_a[rand(charset.size)] }.join
    end

end
