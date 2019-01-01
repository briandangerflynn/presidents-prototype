class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def current_user_team
    @current_user_team ||= Team.where(id: current_user.team_id).first if current_user
  end

  helper_method :current_user_team

  def current_user_challenge
    @current_user_challenge ||= Challenge.where(team_id: current_user_team.id).first if current_user_team
  end

  helper_method :current_user_challenge

  def authorize
    redirect_to '/logout'
  end

  def add_presidents(challenge)
    President.create(name: "George Washington", presidency: "1st", years_active: "1789–1797", drink_type: "beer", specific_drink: "beer", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2BSjAY5", defeated_by: nil)
    President.create(name: "John Adams", presidency: "2nd", years_active: "1797–1801", drink_type: "hard cider", specific_drink: "hard cider", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2VoevzM", defeated_by: nil)
    President.create(name: "Thomas Jefferson", presidency: "3rd", years_active: "1801-1809", drink_type: "wine", specific_drink: "wine", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2EXLaqN", defeated_by: nil)
    President.create(name: "James Madison", presidency: "4th", years_active: "1809-1817", drink_type: "champagne", specific_drink: "champagne", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2GLSWFX", defeated_by: nil)
    President.create(name: "James Monroe", presidency: "5th", years_active: "1817-1825", drink_type: "champagne", specific_drink: "champagne", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2BUxDML", defeated_by: nil)
    President.create(name: "John Quincy Adams", presidency: "6th", years_active: "1825-1829", drink_type: "madeira", specific_drink: "madeira", alt_one: "port", alt_two: "red wine", challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2GNEf57", defeated_by: nil)
    President.create(name: "Andrew Jackson", presidency: "7th", years_active: "1829-1837", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2VnfMXu", defeated_by: nil)
    President.create(name: "Martin Van Buren", presidency: "8th", years_active: "1837-1841", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2Qdd6rW", defeated_by: nil)
    President.create(name: "William Henry Harrison", presidency: "9th", years_active: "1841-1841", drink_type: "hard cider", specific_drink: "hard cider", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2CICRwz", defeated_by: nil)
    President.create(name: "John Tyler", presidency: "10th", years_active: "1841-1845", drink_type: "champagne", specific_drink: "champagne", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2EVuBel", defeated_by: nil)
    President.create(name: "James K. Polk", presidency: "11th", years_active: "1845-1849", drink_type: "wine", specific_drink: "wine", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2RmJwVz", defeated_by: nil)
    President.create(name: "Zachary Taylor", presidency: "12th", years_active: "1849-1850", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2Ap2zVx", defeated_by: nil)
    President.create(name: "Millard Filmore", presidency: "13th", years_active: "1850-1853", drink_type: "madeira", specific_drink: "madeira", alt_one: "port", alt_two: "red wine", challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2QdhCGM", defeated_by: nil)
    President.create(name: "Franklin Pierce", presidency: "14th", years_active: "1853-1857", drink_type: "wildcard", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2RoxdIe", defeated_by: nil)
    President.create(name: "James Buchanan", presidency: "15th", years_active: "1857-1861", drink_type: "madeira", specific_drink: "madeira", alt_one: "port", alt_two: "red wine", challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2R42C38", defeated_by: nil)
    President.create(name: "Abraham Lincoln", presidency: "16th", years_active: "1861-1865", drink_type: "sober", specific_drink: "water", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2BSzZvu", defeated_by: nil)
    President.create(name: "Andrew Johnson", presidency: "17th", years_active: "1865-1869", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2VjB48J", defeated_by: nil)
    President.create(name: "Ulysses S. Grant", presidency: "18th", years_active: "1869-1877", drink_type: "champagne", specific_drink: "champagne", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2LGVJyS", defeated_by: nil)
    President.create(name: "Rutherford B. Hayes", presidency: "19th", years_active: "1877-1881", drink_type: "sober", specific_drink: "water", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2LIeEJI", defeated_by: nil)
    President.create(name: "James Garfield", presidency: "20th", years_active: "1881-1881", drink_type: "beer", specific_drink: "beer", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2QfTZxg", defeated_by: nil)
    President.create(name: "Chester A. Arthur", presidency: "21st", years_active: "1881-1885", drink_type: "wildcard", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2QZdTlk", defeated_by: nil)
    President.create(name: "Grover Cleveland", presidency: "22nd and 24th", years_active: "1885-1889 & 1893-1897", drink_type: "beer", specific_drink: "beer", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2EZ2ydW", defeated_by: nil)
    President.create(name: "Benjamin Harrison", presidency: "23rd", years_active: "1889-1893", drink_type: "sober", specific_drink: "water", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2VpkDb0", defeated_by: nil)
    President.create(name: "William McKinley", presidency: "25th", years_active: "1897-1901", drink_type: "cocktail", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2F0EsPR", defeated_by: nil)
    President.create(name: "Theodore Roosevelt", presidency: "26th", years_active: "1901-1909", drink_type: "cocktail", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2F2Rm02", defeated_by: nil)
    President.create(name: "William Howard Taft", presidency: "27th", years_active: "1909-1913", drink_type: "champagne", specific_drink: "champagne", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2SqFzwa", defeated_by: nil)
    President.create(name: "Woodrow Wilson", presidency: "28th", years_active: "1913-1921", drink_type: "cocktail", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2s1mRjb", defeated_by: nil)
    President.create(name: "Warren G. Harding", presidency: "29th", years_active: "1921-1923", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2F3HxiU", defeated_by: nil)
    President.create(name: "Calvin Coolidge", presidency: "30th", years_active: "1923-1929", drink_type: "cocktail", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2LGVjIQ", defeated_by: nil)
    President.create(name: "Herbert Hoover", presidency: "31st", years_active: "1929-1933", drink_type: "martini", specific_drink: "martini", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2CJAMAA", defeated_by: nil)
    President.create(name: "Franklin D. Roosevelt", presidency: "32nd", years_active: "1933-1945", drink_type: "martini", specific_drink: "martini", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2VkNcWN", defeated_by: nil)
    President.create(name: "Harry Truman", presidency: "33rd", years_active: "1945-1953", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2GQlHRX", defeated_by: nil)
    President.create(name: "Dwight D. Eisenhower", presidency: "34th", years_active: "1953-1961", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2R1mPGY", defeated_by: nil)
    President.create(name: "John F. Kennedy", presidency: "35th", years_active: "1961-1963", drink_type: "wildcard", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2CJEA4E", defeated_by: nil)
    President.create(name: "Lyndon B. Johnson", presidency: "36th", years_active: "1963-1969", drink_type: "whiskey", specific_drink: "whiskey", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2CKloEh", defeated_by: nil)
    President.create(name: "Richard Nixon", presidency: "37th", years_active: "1969-1974", drink_type: "wine", specific_drink: "wine", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2CI36DB", defeated_by: nil)
    President.create(name: "Gerald Ford", presidency: "38th", years_active: "1974-1977", drink_type: "martini", specific_drink: "martini", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2F1qi1W", defeated_by: nil)
    President.create(name: "Jimmy Carter", presidency: "39th", years_active: "1977-1981", drink_type: "unknown", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2LPhm0h", defeated_by: nil)
    President.create(name: "Ronald Reagan", presidency: "40th", years_active: "1981-1989", drink_type: "wine", specific_drink: "wine", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2H2oDer", defeated_by: nil)
    President.create(name: "George H.W. Bush", presidency: "41st", years_active: "1989-1993", drink_type: "wildcard", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2EYwM0F", defeated_by: nil)
    President.create(name: "Bill Clinton", presidency: "42nd", years_active: "1993-2001", drink_type: "cocktail", specific_drink: "", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2F1qKxa", defeated_by: nil)
    President.create(name: "George W. Bush", presidency: "43rd", years_active: "2001-2009", drink_type: "sober", specific_drink: "water", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2GQwUlh", defeated_by: nil)
    President.create(name: "Barack Obama", presidency: "44th", years_active: "2009-2017", drink_type: "beer", specific_drink: "beer", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2BRzt0X", defeated_by: nil)
    President.create(name: "Donald Trump", presidency: "45th", years_active: "2017-present", drink_type: "sober", specific_drink: "water", alt_one: nil, alt_two: nil, challenge_id: challenge.id, defeated: false, image_url: "https://bit.ly/2Aq9wW9", defeated_by: nil)
  end
end


