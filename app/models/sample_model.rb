# back end ruby code
class Animals
  def initialize(params)
    @params = params
    @animals = {
      :aquatic => 0,
      :desert => 0,
      :farm_domestic => 0,
      :savannah => 0,
      :rainforest => 0,
      :forest => 0
    }
  end 
  
  # question 1 results
  def q1
    if @params[:place] == "Central America"
      @animals[:rainforest] += 1 
    elsif @params[:place] == "Canada"
      @animals[:forest] += 1 
    elsif @params[:place] == "Australia"
      @animals[:desert] += 1 
    elsif @params[:place] == "Texas"
      @animals[:farm_domestic] += 1 
    elsif @params[:place] == "Northern Africa"
      @animals[:savannah] += 1 
    elsif @params[:place] == "Carribean"
      @animals[:aquatic] += 1 
    end
  end
  
  def q2
    if @params[:animal] == "Monkey"
      @animals[:rainforest] += 1 
    elsif @params[:animal] == "Bear"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Giraffe"
      @animals[:savannah] += 1 
    elsif @params[:animal] == "Pig"
      @animals[:farm_domestic] += 1 
    elsif @params[:animal] == "Rattlesnake"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Dolphin"
      @animals[:aquatic] += 1 
    end
  end
  
  def q3
    if @params[:animal] == "Hawaii"
      @animals[:aquatic] += 1 
    elsif @params[:animal] == "Sahara Desert"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Farm/Ranch"
      @animals[:farm_domestic] += 1 
    elsif @params[:animal] == "African Savannah"
      @animals[:savannah] += 1 
    elsif @params[:animal] == "Canada"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Brazil"
      @animals[:rainforest] += 1 
    end
  end
  
  def q4
    if @params[:animal] == "Hawaii"
      @animals[:aquatic] += 1 
    elsif @params[:animal] == "Hometown"
      @animals[:farm_domestic] += 1 
    elsif @params[:animal] == "Canada"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Central America"
      @animals[:rainforest] += 1 
    elsif @params[:animal] == "Mexico"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Northern Africa"
      @animals[:savannah] += 1 
    end
  end
  
  def q5
    if @params[:animal] == "Ocean"
      @animals[:aquatic] += 1 
    elsif @params[:animal] == "Farm"
      @animals[:farm_domestic] += 1 
    elsif @params[:animal] == "Forest"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Rainforest"
      @animals[:rainforest] += 1 
    elsif @params[:animal] == "Desert"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Savannah"
      @animals[:savannah] += 1 
    end
  end
    
  def q6
    if @params[:animal] == "Blue"
      @animals[:aquatic] += 1 
    elsif @params[:animal] == "Brown"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Green"
      @animals[:rainforest] += 1 
    elsif @params[:animal] == "Orange"
      @animals[:savannah] += 1 
    elsif @params[:animal] == "Yellow"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Red"
      @animals[:farm_domestic] += 1 
    end
  end
    
  def q7
    if @params[:animal] == "Sun"
      @animals[:savannah] += 1 
    elsif @params[:animal] == "Bubble"
      @animals[:aquatic] += 1 
    elsif @params[:animal] == "Leaf"
      @animals[:rainforest] += 1 
    elsif @params[:animal] == "Pine tree"
      @animals[:forest] += 1 
    elsif @params[:animal] == "Cactus"
      @animals[:desert] += 1 
    elsif @params[:animal] == "Barn"
      @animals[:farm_domestic] += 1 
    end
  end
  
  def result
    #run questions
    q1
    q2
    q3
    q4
    q5
    q6
    q7
    # results
    values = @animals.values
    max = values.max
    answers = []
    # looking through the hash for matches
    @animals.each do |animal, score|
      if score == max
        answers.push(animal)
      end
    end 
    return answers[0]
  end
end 