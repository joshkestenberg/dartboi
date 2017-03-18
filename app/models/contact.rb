class Contact < ApplicationRecord
  def perform
    Contact.all.each do |contact|
      if contact.sent == true
        contact.destroy
      end
    end
  end
end
