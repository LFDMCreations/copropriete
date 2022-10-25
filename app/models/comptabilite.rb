# frozen_string_literal: true

class ClasseComptable < Sequel::Model(:classes_comptables)
end

class SousClasseComptable < Sequel::Model(:sous_classes_comptables)
end

class Compte < Sequel::Model
end
