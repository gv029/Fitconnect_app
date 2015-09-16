class User < ActiveRecord::Base

User.order(score: :desc)

  A= 100
  B= 90
  C= 70
  D= 60
  F= 0

  BIO_SCORE_WEIGTH = 4
  CLIENT_SCORE_WEIGHT = 2

  enum role: [ :trainer, :client, :admin ]

  validates :name, presence: true

  def update_score

    #rG = file_uploads_score
    cG = certifications_score
    bG = bio_score
    #aG = time_score

    puts "I'm here"
    self.score = (((bG * BIO_SCORE_WEIGTH) + (cG * CLIENT_SCORE_WEIGHT) + (5) + (3)) / 14).round(0)



    # ((rG * rW) + (cG * cW) + (bG * bW) + (aG * aW)) / (rW + cW + bW + aw)
    # ((70 * 4) + (CG * 2) + (bG * 5) + (aG * 3)) / (4 + 2 + 5 +3)
  end

  def certifications_score
    if self.certifications == 0
      User::F
    elsif self.certifications == 1 
      User::C
    elsif self.certifications == 2 || self.certifications == 3
      User::B
    else
      User::A
    end
  end
  
  def file_uploads_score
   number_of_files = self.file_uploads.count # nr_of_files = self.file_uploads.count

    if number_of_files == 0 
      User::C 
    elsif (number_of_files == 1) || (number_of_files == 2) || (number_of_files == 3)
      # (number_of_files >= 1 &&  number_of_files <= 3)
      User::B
    elsif number_of_files >= 4
      User::A
    end
    # if nr_of_files == 0
    #   return 0
    # elsif nr_of_files == 1
    #   return 60
    # end 
  end



# option, set default: '' to biot
# def bio
#    self.bio || ""
# end

  def bio_score
   if self.bio.nil?
    return  User::F
   end
   
   case self.bio.split(/\s+/).length
    when 0
      User::F 
    when (1..249)
        User::B
    else
        User::A

    end
  end


  def time_score
    0
  end

  def empty?
    bio.size == 0
  end

  def half_full
    bio.size == 125 
  end

  def full
    bio.size == 250
  end
end





#
# FileUpload model, add paperclip
#
# User has_may file_uplodas
#
