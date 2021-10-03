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

    def name_region
      regiones =  ["N/R","Arica y Parinacota","Tarapacá","Antofagasta","Atacama",
      "Coquimbo","Valparaíso","Región Metropolitana de Santiago",
      "Región del Libertador Gra. Bernardo O’Higgins","Región del Maule","Región de Ñuble",
      "Región del Biobío","Región de la Araucanía", "Región de Los Ríos","Región de Los Lagos",
      "Región Aisén del Gral. Carlos Ibáñez del Campo","Región de Magallanes y de la Antártica Chilena"] 

      nombre = regiones[region.to_i]
    end
end
