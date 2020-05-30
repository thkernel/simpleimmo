APP_NAME = "SimpleImmo"
CIVILITY = [["Monsieur"], ["Madame"], ["Mademoiselle"]]
TYPE_ID = [["Carte d'identité"], ["Passeport"], ["NINA"], ["Permis de conduire"]]
USAGE_TYPE = [["Habitation"], ["Professionnelle"], ["Commerciale"], ["Autre"]]
PERIODICITY = [["Mensuelle"], ["Bi-mensuelle"], ["Trimestrielle"], ["Semestrielle"], ["Annuelle"]]
PAYMENT_METHODS = [["Espèce"], ["Virement bancaire"], ["Transfert"], ["Autres"]]
PAYMENT_DATE = Array.new(31) { |i| [i+1] }
RECEIPT_DATE = Array.new(31) { |i| [i+1] }
