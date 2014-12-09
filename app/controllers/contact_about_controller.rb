class ContactAboutController < ApplicationController
  def contact
    @contactabouts = ContactAbout.first
  end

  def about
    @contactabouts = ContactAbout.first
  end
end
