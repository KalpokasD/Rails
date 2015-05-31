module PagesHelper
	def apdoroja(tekstas)
  		zodziai = tekstas.try(:split, " ") || ['Įveskite', 'tekstą']
  		pasikartojimai = Hash.new(0)
  		zodziai.each { |zodis| pasikartojimai[zodis] += 1 }
  		p Hash[pasikartojimai.sort_by { |k, v| -v }[0..2]] 		
	end
	def rodo
		if @tekstas != nil
			apdoroja(@tekstas) 
		end 
	end
end