class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
<<<<<<< HEAD
  def initialize(keywords)
    # @id = id
    # @name = name
    # @type = type
    # @db = db
  end
  
  #__________________________________________________________________
  
  def self.save(name, type, db)
    sql = "INSERT INTO pokemon (name, type) VALUES (?, ?)"
    
    db.execute(sql, name, type)
  end
  
  #   def self.save(name, type, db)
  #   db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  # end
  
  # def self.save(name, type, db)
  #   sql = <<-SQL
  #     INSERT INTO pokemon (name, type) VALUES (?, ?);
  #   SQL
  #   db.execute(sql, [name, type])
  # end
  
    #________________________________________________________________

  # def self.find(id, db)
  #   sql = "SELECT * FROM pokemon WHERE id = ?"
  #   db.execute(sql, id)
  #   new_pokemon = self.new(name, type)
  #   new_pokemon.id = pokemon[0][0]
  #   new_pokemon.name = pokemon[0][1]
  #   new_pokemon.type = pokemon[0][2]
  #   new_pokemon
  # end
  
  def self.find(num, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", [num])
    new_pokemon = self.new(pokemon)
    new_pokemon.id = pokemon[0][0]
    new_pokemon.name = pokemon[0][1]
    new_pokemon.type = pokemon[0][2]
    
    return new_pokemon
  end
  
  #   def self.find(id, db)
  #   sql = <<-SQL
  #     SELECT * FROM pokemon WHERE id = (?);
  #   SQL
  #   pokemon = db.execute(sql, [id]).flatten
  #   Pokemon.new(id, pokemon[1], pokemon[2], db )
  # end
=======
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  # def self.save
  #   sql = INSERT INTO pokemons (name, type) VALUES (?, ?)
    
  #   @db.execute(sql, self.name, self.type)
  #   @id = @db.execute("SELECT last_inserted_rowid() FROM pokemons)[0][0]
  # end
  
    def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
>>>>>>> 8b8d78753362cc5d7bf858a42001c7efbc06da38
end
